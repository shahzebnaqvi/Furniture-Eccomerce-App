import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/CartScreens/CartScreen.dart';
import 'package:furnitureeccommerce_app/Screens/FavoriteScreens/Model/MyListTileModel.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/MyCustomListTile.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      persistentFooterButtons: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              child: Text(
                "Add all to my cart",
                style: GoogleFonts.nunitoSans(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )),
        )
      ],
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        leading: Icon(Icons.search, color: Color(0xff242424)),
        actions: [
          Icon(Icons.shopping_cart_outlined, color: Color(0xff242424)),
          SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
        title: Text(
          "Favorites",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: myListTileModel.length,
        itemBuilder: (context, index) {
          return MyCustomListTile(
            title: myListTileModel[index].title,
            subtitle: myListTileModel[index].subtitle,
            image: myListTileModel[index].image,
          );
        },
      ),
    );
  }
}
