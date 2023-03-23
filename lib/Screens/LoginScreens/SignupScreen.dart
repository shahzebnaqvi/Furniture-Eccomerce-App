import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/LoginScreens/SignInScreen.dart';

import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool valueObsecure = false;
  bool valueObsecure2 = false;

  void SingUp() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      if (credential.user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SigninScreen(),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        var snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: e.code,
            message: "The password provided is too weak.",
            contentType: ContentType.failure,
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'email-already-in-use') {
        var snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          content: AwesomeSnackbarContent(
            title: e.code,
            message: "The account already exists for that email.",
            contentType: ContentType.failure,
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } catch (e) {
      print(e);
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
                Text("WELCOME",
                    style: GoogleFonts.merriweather(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Color(0xff303030))),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 345,
                  height: 550,
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
                        decoration: InputDecoration(
                            hintText: "Name",
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
                      TextFormField(
                        obscureText: valueObsecure2,
                        decoration: InputDecoration(
                            suffixIcon: !valueObsecure2
                                ? IconButton(
                                    onPressed: () {
                                      setState(() {
                                        valueObsecure2 = true;
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
                                        valueObsecure2 = false;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.visibility_off,
                                      color: Color(0xff1F2C37),
                                    ),
                                  ),
                            hintText: "Confirm Password",
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
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff242424),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          onPressed: () {
                            SingUp();
                          },
                          child: Text("SIGN UP",
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Color(0xffFFFFFF))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                              style: GoogleFonts.merriweather(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff909090))),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SigninScreen()));
                            },
                            child: Text(" Sign In",
                                style: GoogleFonts.merriweather(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Color(0xff242424))),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
