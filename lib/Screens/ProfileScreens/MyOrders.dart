import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'ProfileScreen.dart';
import 'Widget/MyOrderContainer.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                unselectedLabelColor: Color(0xff999999),
                labelStyle: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      "Delivered",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Processing",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Canceled",
                    ),
                  ),
                ]),
            backgroundColor: Color(0xffF5F5F5),
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ProfileScreen()));
                },
                icon: Icon(Icons.arrow_back_ios_new),
                color: Color(0xff242424)),
            centerTitle: true,
            title: Text(
              "My order",
              style: GoogleFonts.merriweather(
                color: Color(0xff242424),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MyOrderContainer(),
              SizedBox(
                height: 10,
              ),
              MyOrderContainer(),
              SizedBox(
                height: 10,
              ),
              MyOrderContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
