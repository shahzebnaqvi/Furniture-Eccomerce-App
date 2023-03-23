
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../CongratzScreens/CongratzScreen.dart';

class MyNotificationContainer extends StatelessWidget {
  final Color color;
  final String text;
  final String type;
  final Color typeColor;
  final String image;
  const MyNotificationContainer(
      {super.key,
      required this.color,
      required this.text,
      this.type = "NEW",
      this.typeColor = Colors.green,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CongratzScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 99,
          width: double.infinity,
          color: color,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your order #123456789 has been $text ",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "Turpis pretium et in arcu adipiscing nec. ",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "Turpis pretium et in arcu adipiscing nec. ",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    type,
                    style: GoogleFonts.nunitoSans(
                        color: typeColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
