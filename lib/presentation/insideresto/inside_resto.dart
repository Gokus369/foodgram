import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/all_purpose_widgets/main_titile.dart';
import 'package:foodapp/presentation/all_purpose_widgets/toggleswitch.dart';

import 'widgets/resto_menu.dart';

class InsideResto extends StatelessWidget {
  const InsideResto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                placeholder: 'Search,Order,Enjoy,Repeat!',
                backgroundColor: Colors.grey.withOpacity(0.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(CupertinoIcons.xmark_circle_fill),
                style: const TextStyle(color: Colors.white),
              ),
              kHeight,
              const SwitchExample(),
              kHeight,
              const Divider(
                thickness: 2,
                color: kGrey,
              ),
              kHeight,
              const MainTitle(title: 'Recomended (20)'),
              kHeight,
              Expanded(
                // Use Expanded to make ListView.builder take remaining space
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const RestoMenu();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
