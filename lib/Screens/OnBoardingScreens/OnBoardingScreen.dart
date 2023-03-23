import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/LoginScreens/SignInScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.png"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MAKE YOUR",
              style: GoogleFonts.gelasio(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: Color(0xff606060)),
            ),
            Text(
              "HOME BEAUTIFUL",
              style: GoogleFonts.gelasio(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color(0xff303030)),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 105,
                width: 286,
                child: Text(
                  "The best simple place where you discover most wonderful furnitures and make your home beautiful",
                  style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff606060)),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Container(
                  height: 54,
                  width: 159,
                  decoration: BoxDecoration(
                      color: Color(0xff242424),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SigninScreen()));
                      },
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.gelasio(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                      ))),
            )
          ],
        ),
      ),
    ));
  }
}
