import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/core/constants.dart';
import 'package:foodapp/presentation/restaurent/widgets/order_now_box.dart';
import 'package:foodapp/presentation/restaurent/widgets/surprise.dart';

class RestaurentMainPage extends StatelessWidget {
  const RestaurentMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.near_me),
            label: const Text(
              'Pathanamthitta Town',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
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
              kHeight20,
              const SurpriseWidget(),
              kHeight20,
              const OrderNwBox()
            ],
          ),
        ),
      ),
    );
  }
}
