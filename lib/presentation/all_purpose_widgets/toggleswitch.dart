import 'package:flutter/material.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({
    Key? key,
  }) : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool vegetarian = true;
  bool nonVegetarian = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:
            CrossAxisAlignment.center, // Align children vertically centered
        children: <Widget>[
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width /
                  2, // Half of the width of the row
              child: ListTile(
                contentPadding: EdgeInsets.zero, // Remove default padding
                leading: Icon(Icons.emoji_food_beverage, color: Colors.green),
                title: Text('Vegetarian'),
                trailing: Switch(
                  value: vegetarian,
                  onChanged: (value) {
                    setState(() {
                      vegetarian = value;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width /
                  2, // Half of the width of the row
              child: ListTile(
                contentPadding: EdgeInsets.zero, // Remove default padding
                leading:
                    const Icon(Icons.emoji_food_beverage, color: Colors.red),
                title: const Text('Non-Vegetarian'),
                trailing: Switch(
                  value: nonVegetarian,
                  onChanged: (value) {
                    setState(() {
                      nonVegetarian = value;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
