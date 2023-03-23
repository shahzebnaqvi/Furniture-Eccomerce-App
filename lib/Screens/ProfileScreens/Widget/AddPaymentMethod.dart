import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "ADD NEW CARD",
                style: GoogleFonts.nunitoSans(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ),
      ],
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Color(0xff242424)),
        centerTitle: true,
        title: Text(
          "Add Payment method",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/Payment card2.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 66,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CardHolder Name",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Ex: Bruno Pham",
                    style: GoogleFonts.nunitoSans(
                        color: Color(0xff808080),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 66,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffF5F5F5),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Card Number",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "**** **** **** 3456",
                    style: GoogleFonts.nunitoSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 66,
                  width: 157,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CVV",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Ex: 123",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xff808080),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 66,
                  width: 157,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffF5F5F5),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expiration Date",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "03/22",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
