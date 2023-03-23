import 'package:flutter/material.dart';
import 'package:furnitureeccommerce_app/Screens/ProfileScreens/ProfileScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widget/AddPaymentMethod.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool valueBox = true;
  bool valueBox3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffF5F5F5),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddPaymentMethod()));
        },
        child: Icon(
          Icons.add,
          color: Color(0xff242424),
        ),
      ),
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
        centerTitle: true,
        title: Text(
          "Payment method",
          style: GoogleFonts.merriweather(
            color: Color(0xff242424),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/Payment card2.png"),
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    side: BorderSide(
                      color: Color(0xff242424),
                    ),
                    fillColor: MaterialStateProperty.all(Color(0xff303030)),
                    value: valueBox,
                    onChanged: ((valueBox) {
                      setState(() {
                        this.valueBox = valueBox!;
                      });
                    })),
                Text("Use as default payment method",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/Payment card.png"),
            Row(
              children: [
                Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ),
                    side: BorderSide(
                      color: Color(0xff242424),
                    ),
                    fillColor: MaterialStateProperty.all(Color(0xff303030)),
                    value: valueBox3,
                    onChanged: ((valueBox3) {
                      setState(() {
                        this.valueBox3 = valueBox3!;
                      });
                    })),
                Text("Use as the shipping address",
                    style: GoogleFonts.nunitoSans(
                      color: Color(0xff242424),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
