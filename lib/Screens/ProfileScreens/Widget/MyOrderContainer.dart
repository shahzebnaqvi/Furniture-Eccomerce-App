
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOrderContainer extends StatelessWidget {
  const MyOrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order ID: 123456789",
                style: GoogleFonts.nunitoSans(
                  color: Color(0xff242424),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "20/03/2020",
                style: GoogleFonts.nunitoSans(
                  color: Color(0xff909090),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                    text: "Quantity:",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: " 2",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
              Text.rich(
                TextSpan(
                    text: "Total Amount: ",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: "\$ 20.00",
                        style: GoogleFonts.nunitoSans(
                          color: Color(0xff242424),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff242424)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Detail",
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              Text(
                "Delivered",
                style: GoogleFonts.nunitoSans(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
