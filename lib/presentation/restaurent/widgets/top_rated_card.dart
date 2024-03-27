import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';

class TopRatedCard extends StatelessWidget {
  const TopRatedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 170,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/ham.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Positioned(
          bottom: 30,
          left: 18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '20% OFF',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16, color: kGrey),
              ),
              Text(
                '20% OFF',
                style: TextStyle(color: kGrey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
