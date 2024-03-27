import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: kWhite, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
}
