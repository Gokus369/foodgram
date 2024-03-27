import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.title, this.fontSize = 22});
  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: kWhite, fontWeight: FontWeight.bold, fontSize: fontSize),
    );
  }
}
