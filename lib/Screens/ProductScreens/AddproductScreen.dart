import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController subtitleController = TextEditingController();
  CollectionReference myItems =
      FirebaseFirestore.instance.collection('myItems');

  Future<void> addMyItem() {
    // Call the user's CollectionReference to add a new user
    return myItems.add({
      "title": titleController.text,
      "price": "\$ ${subtitleController.text}.00",
      "image": "assets/Large Lamp.jpg",
    }).then((value) {
      var snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: "Success",
          message: "Product Added Successfully",
          contentType: ContentType.success,
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }).catchError((error) => print("Failed to Product user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xffF5F5F5),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new),
              color: Color(0xff242424)),
          centerTitle: true,
          title: Text(
            "Add Prodcts",
            style: GoogleFonts.merriweather(
              color: Color(0xff242424),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                    hintText: "Enter Product Name",
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
                controller: subtitleController,
                decoration: InputDecoration(
                    hintText: "Enter Product Price",
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
                height: 60,
                width: 277,
                decoration: BoxDecoration(
                    color: Color(0xff242424),
                    borderRadius: BorderRadius.circular(6)),
                child: TextButton(
                    onPressed: () {
                      addMyItem();
                    },
                    child: Text(
                      "Add Product",
                      style: GoogleFonts.nunitoSans(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )),
              )
            ],
          ),
        ));
  }
}
