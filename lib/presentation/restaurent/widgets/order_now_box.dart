
import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';

class OrderNwBox extends StatelessWidget {
  const OrderNwBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: kWhite.withOpacity(0.3), // Border color
              width: 1, // Border width
            ),
            borderRadius: BorderRadius.circular(10), // Border radius
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/ham.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 14,
          child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: kWhite),
              onPressed: () {},
              child: const Text(
                'ORDER NOW',
                style: TextStyle(
                    color: kBlack,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}
