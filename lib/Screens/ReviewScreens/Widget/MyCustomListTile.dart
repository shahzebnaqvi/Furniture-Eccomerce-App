import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomListTile extends StatelessWidget {
  const MyCustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/Stand.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Minimal Stand",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff242424),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("4.5",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "10 reviews",
                  style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
