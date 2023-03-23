import 'package:flutter/material.dart';

import 'package:furnitureeccommerce_app/Screens/ReviewScreens/Widget/MyCustomListTile.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextButton(
              onPressed: () {},
              child: Text(
                "Write a review",
                style: GoogleFonts.nunitoSans(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )),
        ),
      ],
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
          "Rating & Review",
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
              Center(
                child: Text(
                  "BACK TO HOME",
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff242424),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyCustomListTile(),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(height: 10),
              MyContainer(
                name: "Bruno Fernandes",
                image: "assets/avatar.png",
              ),
              SizedBox(height: 10),
              MyContainer(
                name: "Tracy Mosby",
                image: "assets/avatar2.png",
              ),
              SizedBox(height: 10),
              MyContainer(
                name: "Tracy Mosby",
                image: "assets/avatar3.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String image;
  final String name;
  const MyContainer({
    super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(image),
          Container(
            height: 190,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xffFFFFFF),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                    Text("20/03/2020",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff808080),
                          fontSize: 12,
                        )),
                  ],
                ),
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
      ),
    );
  }
}
