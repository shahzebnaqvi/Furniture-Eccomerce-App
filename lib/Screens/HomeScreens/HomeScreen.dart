import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/CartScreens/CartScreen.dart';
import 'package:furnitureeccommerce_app/Screens/ProductScreens/AddproductScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Model/MyContainerModel.dart';
import 'Widget/MyContainer.dart';
import 'Widget/MyItemContainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Stream<QuerySnapshot> _myItemsStream =
      FirebaseFirestore.instance.collection('myItems').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          children: [
            Text(
              "Make Home",
              style: GoogleFonts.gelasio(
                color: Color(0xff909090),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Beautiful".toUpperCase(),
              style: GoogleFonts.gelasio(
                color: Color(0xff242424),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => AddProductScreen()));
            },
            icon: Icon(Icons.add),
            color: Color(0xff808080)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CartScreen()));
            },
            icon: Icon(Icons.shopping_cart_outlined),
            color: Color(0xff808080),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        myContainerModel.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyContainer(
                                color: myContainerModel[index].color,
                                iconData: myContainerModel[index].iconData,
                                iconColor: myContainerModel[index].iconColor,
                              ),
                            )),
                  )),
              SizedBox(
                height: 20,
              ),
              StreamBuilder(
                  stream: _myItemsStream,
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text('Something went wrong');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Color(0xff242424),
                        ),
                      );
                    }
                    return GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      childAspectRatio: 0.72,
                      physics: BouncingScrollPhysics(),
                      children:
                          snapshot.data!.docs.map((DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data() as Map<String, dynamic>;
                        return MyItemContainer(
                          image: data['image'],
                          price: data['price'],
                          title: data['title'],
                        );
                      }).toList(),
                    );
                  })
            ])),
      ),
    );
  }
}
