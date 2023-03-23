import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/MyNotificationContainer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          elevation: 0,
          leading: Icon(Icons.search, color: Color(0xff242424)),
          centerTitle: true,
          title: Text(
            "Notification",
            style: GoogleFonts.merriweather(
              color: Color(0xff242424),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyNotificationContainer(
                color: Color(0xffF5F5F5),
                text: "confirmed",
                image: "assets/Chair.png",
              ),
              MyNotificationContainer(
                color: Colors.white,
                text: "canceled",
                type: "HOT!",
                typeColor: Colors.red,
                image: "assets/Lamp.png",
              ),
              MyNotificationContainer(
                color: Color(0xffF5F5F5),
                text: "confirmed",
                image: "assets/Stand.png",
              ),
              MyNotificationContainer(
                color: Colors.white,
                text: "canceled",
                type: "HOT!",
                typeColor: Colors.red,
                image: "assets/Lamp.png",
              ),
              MyNotificationContainer(
                color: Color(0xffF5F5F5),
                text: "confirmed",
                image: "assets/Table.png",
              ),
              MyNotificationContainer(
                color: Color(0xffF5F5F5),
                text: "confirmed",
                image: "assets/Desk.png",
              ),
            ],
          ),
        ));
  }
}
