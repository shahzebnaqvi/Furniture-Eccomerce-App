import 'dart:async';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/HomeScreens/HomePage.dart';
import 'package:furnitureeccommerce_app/Screens/LoginScreens/SignupScreen.dart';

import 'package:google_fonts/google_fonts.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool valueObsecure = false;

  void SingIn() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      if (credential.user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        var snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: e.code,
            message:
                "There is no user record corresponding to this identifier.",
            contentType: ContentType.failure,
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'wrong-password') {
        var snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: e.code,
            message: 'Wrong password provided for that user.',
            contentType: ContentType.failure,
          ),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          backgroundColor: Color(0xffF5F5F5),
          body: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 105,
                        height: 1,
                        color: Color(0xffBDBDBD),
                      ),
                      Image.asset("assets/AppLogo.png"),
                      Container(
                        width: 105,
                        height: 1,
                        color: Color(0xffBDBDBD),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Hello !",
                      style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xff909090))),
                  SizedBox(
                    height: 20,
                  ),
                  Text("WELCOME BACK",
                      style: GoogleFonts.merriweather(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Color(0xff303030))),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 345,
                    height: 437,
                    padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(color: Color(0xffFFFFFF), boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff909090)),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffBDBDBD),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffBDBDBD),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: valueObsecure,
                          decoration: InputDecoration(
                              suffixIcon: !valueObsecure
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          valueObsecure = true;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.visibility,
                                        color: Color(0xff1F2C37),
                                      ),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          valueObsecure = false;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.visibility_off,
                                        color: Color(0xff1F2C37),
                                      ),
                                    ),
                              hintText: "Password",
                              hintStyle: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff909090)),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffBDBDBD),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffBDBDBD),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Forgot Password ?",
                                style: GoogleFonts.merriweather(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: Color(0xff909090))),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff242424),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                            onPressed: () {
                              SingIn();
                            },
                            child: Text("LOGIN",
                                style: GoogleFonts.merriweather(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xffFFFFFF))),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignupScreen()));
                          },
                          child: Text("Sign Up",
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff909090))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
