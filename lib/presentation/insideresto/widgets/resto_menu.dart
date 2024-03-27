import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/all_purpose_widgets/main_titile.dart';

class RestoMenu extends StatelessWidget {
  const RestoMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.red),
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_drop_up,
                color: Colors.red,
                size: 16,
              ),
            ),
            kHeight,
            const MainTitle(
              title: 'Snack Combo 1',
              fontSize: 18,
            ),
            kHeight,
            const Text(
              '₹274',
              style: TextStyle(fontSize: 18),
            ),
            kHeight,
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '4.1',
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
                Text(
                  '(22)',
                  style: TextStyle(fontSize: 18, color: kGrey),
                ),
              ],
            ),
            kHeight20,
            const Text(
              'Crispy Lollipop [6 Pieces] With Hot wings[5 Piece]\nChicken Popcorn[12 Pieces] with Bun...more',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            kHeight20,
            const Divider(
              thickness: 2,
              color: kGrey,
            )
          ],
        ),
        Positioned(
          top: 40,
          right: 30,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: kWhite,
              padding: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 50), // Adjust padding as needed
              textStyle:
                  const TextStyle(fontSize: 20), // Adjust text size as needed
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(10), // Set the border radius here
              ),
            ),
            child: const Text(
              'ADD',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        kHeight,
      ],
    );
  }
}
