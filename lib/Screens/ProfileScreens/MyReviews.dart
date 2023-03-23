import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ProfileScreen.dart';

class MyReviews extends StatelessWidget {
  const MyReviews({super.key});

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
        actions: [
          Icon(Icons.search, color: Color(0xff242424)),
          SizedBox(width: 10),
        ],
        centerTitle: true,
        title: Text(
          "My reviews",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyReviewContainer(),
              SizedBox(height: 10),
              MyReviewContainer(),
              SizedBox(height: 10),
              MyReviewContainer()
            ],
          ),
        ),
      ),
    );
  }
}

class MyReviewContainer extends StatelessWidget {
  const MyReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xffFFFFFF),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage("assets/Table.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Coffee Table",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff606060),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$ 50.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  Text("20/03/2020",
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff808080),
                        fontSize: 12,
                      )),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price",
                style: GoogleFonts.nunitoSans(
                  color: Color(0xff242424),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
