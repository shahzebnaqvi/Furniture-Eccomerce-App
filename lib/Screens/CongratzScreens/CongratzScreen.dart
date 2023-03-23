import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/HomeScreens/HomePage.dart';
import 'package:furnitureeccommerce_app/Screens/ReviewScreens/ReviewScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class CongratzScreen extends StatelessWidget {
  const CongratzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  "SUCCESS!",
                  style: GoogleFonts.merriweather(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff303030)),
                ),
                SizedBox(
                    height: 250,
                    width: 268,
                    child: Stack(
                      children: [
                        Image.asset("assets/Sucess.png"),
                        Positioned(
                          bottom: 0,
                          left: 100,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.green),
                            child: Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 10),
                Text("Your order will be delivered soon.",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18, color: Color(0xff606060))),
                Text("Thank you for choosing our app!",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 18, color: Color(0xff606060))),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 315,
                  decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReviewScreen()));
                    },
                    child: Text(
                      "Track your orders",
                      style: GoogleFonts.merriweather(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffffffff)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  width: 315,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff242424),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => HomePage()),
                          (route) => true);
                    },
                    child: Text(
                      "BACK TO HOME",
                      style: GoogleFonts.merriweather(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff242424)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
