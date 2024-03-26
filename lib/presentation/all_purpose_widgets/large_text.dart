import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';

class LargeText extends StatelessWidget {
  const LargeText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          const TextStyle(color: kWhite, fontWeight: FontWeight.bold, fontSize: 32),
    );
  }
}
