import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/ProfileScreens/ProfileScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AddShippingAddress.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({super.key});

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  bool valueBox = true;
  bool valueBox2 = false;
  bool valueBox3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF5F5F5),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddShippingAddress()));
        },
        child: Icon(
          Icons.add,
          color: Color(0xff242424),
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ProfileScreen()));
            },
            icon: Icon(Icons.arrow_back_ios_new),
            color: Color(0xff242424)),
        centerTitle: true,
        title: Text(
          "Shipping address",
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
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    side: BorderSide(
                      color: Color(0xff242424),
                    ),
                    fillColor: MaterialStateProperty.all(Color(0xff303030)),
                    value: valueBox,
                    onChanged: ((valueBox) {
                      setState(() {
                        this.valueBox = valueBox!;
                      });
                    })),
                Text("Use as the shipping address",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bruno Fernandes",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.edit_outlined, color: Color(0xff242424)),
                    ],
                  ),
                  Divider(
                    color: Color(0xff242424),
                  ),
                  Text(
                    "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    side: BorderSide(
                      color: Color(0xff242424),
                    ),
                    fillColor: MaterialStateProperty.all(Color(0xff303030)),
                    value: valueBox2,
                    onChanged: ((valueBox2) {
                      setState(() {
                        this.valueBox2 = valueBox2!;
                      });
                    })),
                Text("Use as the shipping address",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bruno Fernandes",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.edit_outlined, color: Color(0xff242424)),
                    ],
                  ),
                  Divider(
                    color: Color(0xff242424),
                  ),
                  Text(
                    "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    side: BorderSide(
                      color: Color(0xff242424),
                    ),
                    fillColor: MaterialStateProperty.all(Color(0xff303030)),
                    value: valueBox3,
                    onChanged: ((valueBox3) {
                      setState(() {
                        this.valueBox3 = valueBox3!;
                      });
                    })),
                Text("Use as the shipping address",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bruno Fernandes",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.edit_outlined, color: Color(0xff242424)),
                    ],
                  ),
                  Divider(
                    color: Color(0xff242424),
                  ),
                  Text(
                    "25 rue Robert Latouche, Nice, 06200, Côte D’azur, France",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
