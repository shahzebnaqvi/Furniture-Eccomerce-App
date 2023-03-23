import 'package:flutter/material.dart';

class MyContainerModel {
  Color color;
  IconData iconData;
  Color iconColor;

  MyContainerModel(
      {required this.color, required this.iconData, required this.iconColor});
}

List<MyContainerModel> myContainerModel = [
  MyContainerModel(
      iconColor: Colors.white,
      color: Color(0xff303030),
      iconData: Icons.star_border_outlined),
  MyContainerModel(
      iconColor: Color(0xff909090),
      color: Color(0xffF5F5F5),
      iconData: Icons.chair_alt_outlined),
  MyContainerModel(
      iconColor: Color(0xff909090),
      color: Color(0xffF5F5F5),
      iconData: Icons.table_restaurant_outlined),
  MyContainerModel(
      iconColor: Color(0xff909090),
      color: Color(0xffF5F5F5),
      iconData: Icons.table_restaurant_outlined),
  MyContainerModel(
      iconColor: Color(0xff909090),
      color: Color(0xffF5F5F5),
      iconData: Icons.chair),
  MyContainerModel(
      iconColor: Color(0xff909090),
      color: Color(0xffF5F5F5),
      iconData: Icons.bed),
];
