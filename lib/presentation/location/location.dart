import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/all_purpose_widgets/large_text.dart';
import 'package:foodapp/presentation/location/add_location.dart';
import 'package:foodapp/presentation/restaurent/restuarent_main_page.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2019/09/22/16/20/location-4496459_1280.png',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            kHeight20,
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: LargeText(text: "What's your Location?"),
            ),
            const Positioned(
              top: 70,
              left: 30,
              child: Text(
                'We need your location to show available\n restaurants & products,',
                style: TextStyle(color: kWhite),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              right: 30,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => const RestaurentMainPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: kBlack,
                          backgroundColor: kWhite,
                          // foreground
                        ),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const AddLocation(),
                        ),
                      );
                    },
                    child: const Text(
                      " Enter Location manually",
                      style: TextStyle(color: kBlack, fontSize: 18),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
