import 'package:flutter/material.dart';
import 'package:foodapp/core/colors.dart';
import 'package:foodapp/core/constants.dart';

class SavedAddress extends StatelessWidget {
  const SavedAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.work),
                  kWidth,
                  Text(
                    'work',
                    style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
              Text('Alappat Heritage,Centre _A6th Flooor mg Road,Padma...')
            ],
          ),
          Positioned(
            left: 340,
            bottom: 2,
            child: CircleAvatar(
              backgroundColor: kGrey.withOpacity(0.5),
              child: const Icon(Icons.share),
            ),
          ),
          
        ],
      ),
    );
  }
}
