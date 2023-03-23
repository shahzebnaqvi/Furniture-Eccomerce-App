import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ProductScreens/ProductScreen.dart';

class MyItemContainer extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const MyItemContainer({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ProductScreen(
                      title: title,
                      price: price,
                      image: image,
                    )));
      },
      child: Container(
        height: 200,
        width: 157,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              padding: EdgeInsets.all(6),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff606060),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    price,
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff303030),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
