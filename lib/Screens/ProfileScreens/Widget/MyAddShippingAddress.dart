import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyShippingAddressContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  const MyShippingAddressContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.nunitoSans(
              color: Color(0xff808080),
              fontSize: 12,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.nunitoSans(
                color: Color(0xff808080),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
