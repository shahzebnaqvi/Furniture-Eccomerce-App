import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreen extends StatefulWidget {
  final String title;
  final String price;
  final String image;
  const ProductScreen(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  CollectionReference items = FirebaseFirestore.instance.collection('items');
  int count = 0;

  Future<void> addItem(String title, String price, String image) {
    return items.doc(title).set({
      'title': title,
      'price': price,
      'image': image,
      "quantity": count,
    }).then((value) {
      var snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: "Success",
          message: "Product Add to Cart Successfully",
          contentType: ContentType.success,
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }).catchError((error) => print("Failed to Product user: $error"));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xffF0F0F0),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Icon(
                    Icons.bookmark_border_outlined,
                    size: 30,
                  ),
                ),
              ),
              Container(
                height: 60,
                width: 290,
                decoration: BoxDecoration(
                    color: Color(0xff242424),
                    borderRadius: BorderRadius.circular(6)),
                child: TextButton(
                    onPressed: () {
                      addItem(widget.title, widget.price, widget.image);
                    },
                    child: Text(
                      "Add to Cart",
                      style: GoogleFonts.nunitoSans(
                          color: Color(0xffffffff),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )),
              )
            ],
          )
        ],
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 455,
              width: 449,
              child: Stack(children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 455,
                    width: 323,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.1,
                  left: 30,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new)),
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.1,
                  left: 20,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      height: 192,
                      width: 64,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff909090),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffffffff),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xffF0F0F0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffB4916C),
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xffF0F0F0),
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffE4CBAD),
                            ),
                          )
                        ],
                      )),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 20.0, right: 8.0, bottom: 8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.gelasio(
                          color: Color(0xff303030),
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.price,
                            style: GoogleFonts.nunitoSans(
                                color: Color(0xff303030),
                                fontSize: 30,
                                fontWeight: FontWeight.w700)),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffF0F0F0),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        count++;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      size: 25,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(count.toString(),
                                style: GoogleFonts.nunitoSans(
                                    color: Color(0xff303030),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xffF0F0F0),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        if (count > 0) {
                                          count--;
                                        }
                                      });
                                    },
                                    icon: Icon(
                                      Icons.remove,
                                      size: 25,
                                    )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffF2C94C),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("4.9",
                            style: GoogleFonts.nunitoSans(
                                color: Color(0xff303030),
                                fontSize: 20,
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          width: 20,
                        ),
                        Text("(50 Reviews)",
                            style: GoogleFonts.nunitoSans(
                                color: Color(0xff808080),
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Text(
                        "Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ",
                        style: GoogleFonts.nunitoSans(
                            color: Color(0xff808080),
                            fontSize: 14,
                            fontWeight: FontWeight.w300)),
                  ]),
            ),
          ]),
        ));
  }
}
