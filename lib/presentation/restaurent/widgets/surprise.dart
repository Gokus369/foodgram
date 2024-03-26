import 'package:flutter/material.dart';
import 'package:foodapp/core/constants.dart';

class SurpriseWidget extends StatelessWidget {
  const SurpriseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 255, 255, 255)
              .withOpacity(0.5), // Border color
          width: 2, // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SURPRISE!',
                  style: TextStyle(color: Colors.orange),
                ),
                Text(
                  'Open your gift now!',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                kHeight20,
                Text(
                  'Order now',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 20,
              top: 25,
              child: SizedBox(
                width: 35,
                height: 35,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/12/12/22/59/red-1902863_1280.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
