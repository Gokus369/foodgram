import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/core/colors.dart';

class PolicyAndPrivacy extends StatelessWidget {
  const PolicyAndPrivacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "By clicking, I accept the",
            style: TextStyle(color: kGrey, fontSize: 16),
          ),
          Text(
            '  terms of service ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: kGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'and',
            style: TextStyle(color: kGrey, fontSize: 16),
          ),
          Text(
            ' privacy policy ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: kGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
