import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/MyAddShippingAddress.dart';

class AddShippingAddress extends StatelessWidget {
  const AddShippingAddress({super.key});

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
                "SAVE ADDRESS",
                style: GoogleFonts.nunitoSans(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ),
      ],
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
          "Add shipping address",
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
          children: [
            MyShippingAddressContainer(
              title: "Full name",
              subtitle: "Ex: Bruno Pham",
              color: Color(0xffF5F5F5),
            ),
            SizedBox(height: 10),
            MyShippingAddressContainer(
              title: "Address",
              subtitle: "Ex: 25 Robert Latouche Street",
              color: Colors.white,
            ),
            SizedBox(height: 10),
            MyShippingAddressContainer2(
              title: "Zipcode (Postal Code)",
              subtitle: "Pham Cong Thanh",
              color: Colors.white,
            ),
            SizedBox(height: 10),
            Container(
              height: 70,
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
                    "Country",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Country",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xff808080),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 70,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "City",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New York",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xff242424),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 70,
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
                    "District",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select District",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xff808080),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyShippingAddressContainer2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  const MyShippingAddressContainer2({
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
                color: Color(0xff242424),
                fontSize: 16,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
