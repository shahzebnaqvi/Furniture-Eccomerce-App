
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Color iconColor;
  const MyContainer({
    super.key,
    required this.color,
    required this.iconData, required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }
}
