import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/CartScreens/Widget/MyCustomListTile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CheckOutScreens/CheckOutScreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int total = 1000;
  final Stream<QuerySnapshot> _itemsStream =
      FirebaseFirestore.instance.collection('items').snapshots();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      persistentFooterButtons: [
        Container(
          height: 44,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff242424),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CheckOutScreen()));
            },
            child: Text(
              "Checkout",
              style: GoogleFonts.nunitoSans(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Color(0xff242424)),
        centerTitle: true,
        title: Text(
          "My Cart",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: StreamBuilder<QuerySnapshot>(
                stream: _itemsStream,
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Something went wrong');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff242424),
                      ),
                    );
                  }

                  return ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data() as Map<String, dynamic>;
                      return MyCustomListTile(
                        image: data["image"],
                        title: data["title"],
                        price: data["price"],
                        quantity: data["quantity"],
                      );
                    }).toList(),
                  );
                }),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    height: 44,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enter Coupon Code",
                          style: GoogleFonts.nunitoSans(
                            color: Color(0xff999999),
                            fontSize: 16,
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                            color: Color(0xff303030),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff808080),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "\$ $total",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
