import 'package:flutter/material.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/restaurent/widgets/restarent_cards.dart';

class RestaurentList extends StatelessWidget {
  const RestaurentList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RestaurentCards(),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            Text(
              'Amani Arabian Restaurant',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '4.2(1k+).35mins',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              'Arabian South Indian Biriyani \nPathanamthitta 0.2km',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            kHeight20,
            Text(
              'FREE DELIVERY',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
          ],
        )
      ],
    );
  }
}
