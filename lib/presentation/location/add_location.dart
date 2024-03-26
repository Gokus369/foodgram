import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/location/widgets/saved_address.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: const Text(
            'Enter your area or apartment name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight,
              CupertinoSearchTextField(
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
                style: const TextStyle(color: Colors.white),
              ),
              kHeight20,
              InkWell(
                onTap: () {},
                child: const Row(
                  children: [
                    Icon(Icons.near_me),
                    Text(
                      'Use my current location',
                      style: TextStyle(
                        fontSize: 16,
                        color: kGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              kHeight20,
              const Divider(
                color: kGrey,
              ),
              kHeight,
              const Text(
                'Saved Addresses',
                style: TextStyle(color: kGrey, fontWeight: FontWeight.bold),
              ),
              kHeight20,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: SavedAddress());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
