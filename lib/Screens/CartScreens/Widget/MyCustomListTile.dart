import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomListTile extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  int quantity;

  MyCustomListTile({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.quantity,
  });

  @override
  State<MyCustomListTile> createState() => _MyCustomListTileState();
}

class _MyCustomListTileState extends State<MyCustomListTile> {
  final Stream<QuerySnapshot> _itemsStream =
      FirebaseFirestore.instance.collection('items').snapshots();

  Future<void> deleteItem() async {
    await FirebaseFirestore.instance
        .collection('items')
        .doc(widget.title)
        .delete();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Container(
        height: 110,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff242424),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  widget.price,
                  style: GoogleFonts.nunitoSans(
                    color: Color(0xff242424),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffE0E0E0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.quantity++;
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          size: 25,
                        ),
                        color: Color(0xff808080),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.quantity.toString(),
                      style: GoogleFonts.nunitoSans(
                        color: Color(0xff242424),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffE0E0E0),
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.quantity > 0) {
                                widget.quantity--;
                              }
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 25,
                          ),
                          color: Color(0xff808080),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      deleteItem();
                    },
                    icon: Icon(
                      Icons.close,
                      color: Color(0xff242424),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
