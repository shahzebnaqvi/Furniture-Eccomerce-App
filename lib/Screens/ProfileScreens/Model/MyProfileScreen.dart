import 'package:flutter/material.dart';

import '../MyOrders.dart';
import '../MyReviews.dart';
import '../PaymentMethod.dart';
import '../Setting.dart';
import '../ShippingAddress.dart';

class MyProfileScreenModel {
  final String title;
  final String subtitle;
  final Navigator onTap;

  MyProfileScreenModel(this.title, this.subtitle, this.onTap);
}

List<MyProfileScreenModel> myProfileScreenModel = [
  MyProfileScreenModel("My Orders", "Already have 10 orders", Navigator(
    onGenerateRoute: (settings) {
      return MaterialPageRoute(builder: (context) => MyOrders());
    },
  )),
  MyProfileScreenModel("Shipping Addresses", "03 Addresses", Navigator(
    onGenerateRoute: (settings) {
      return MaterialPageRoute(builder: (context) => ShippingAddress());
    },
  )),
  MyProfileScreenModel("Payment Method", "You have 2 cards", Navigator(
    onGenerateRoute: (settings) {
      return MaterialPageRoute(builder: (context) => PaymentMethod());
    },
  )),
  MyProfileScreenModel("My reviews", "Reviews for 5 items", Navigator(
    onGenerateRoute: (settings) {
      return MaterialPageRoute(builder: (context) => MyReviews());
    },
  )),
  MyProfileScreenModel("Setting", "Notification, Password, FAQ, Contact",
      Navigator(
    onGenerateRoute: (settings) {
      return MaterialPageRoute(builder: (context) => Setting());
    },
  )),
];
