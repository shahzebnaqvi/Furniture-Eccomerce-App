import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ProfileScreen.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool state = false;
  bool state1 = false;
  bool state2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Setting",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Personal Information",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff909090),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color: Color(0xff909090),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 64,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Bruno Pham",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 64,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "bruno203@gmail.com",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pasword",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff909090),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color: Color(0xff909090),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 64,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff808080),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "***************",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Notifications",
              style: GoogleFonts.nunitoSans(
                color: Color(0xff909090),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 54,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sales",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CupertinoSwitch(
                    value: state,
                    onChanged: (value) {
                      state = value;
                      setState(
                        () {},
                      );
                    },
                    thumbColor: CupertinoColors.white,
                    activeColor: CupertinoColors.activeGreen,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 54,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sales",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CupertinoSwitch(
                    value: state1,
                    onChanged: (value) {
                      state1 = value;
                      setState(
                        () {},
                      );
                    },
                    thumbColor: CupertinoColors.white,
                    activeColor: CupertinoColors.activeGreen,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 54,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery status changes",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CupertinoSwitch(
                    value: state2,
                    onChanged: (value) {
                      state2 = value;
                      setState(
                        () {},
                      );
                    },
                    thumbColor: CupertinoColors.white,
                    activeColor: CupertinoColors.activeGreen,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Help Center",
              style: GoogleFonts.nunitoSans(
                color: Color(0xff808080),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 54,
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(4)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FAQ",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_sharp,
                    size: 30,
                    color: Color(0xff242424),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
