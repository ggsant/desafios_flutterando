import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class CardContinue extends StatelessWidget {
  final String image;
  final String title;
  final String name;

  const CardContinue({
    required this.image,
    required this.title,
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cardBackground,
      height: 61,
      width: 240,
      child: Row(
        children: [
          SizedBox(width: 5),
          Image.asset(
            'assets/img/$image',
            height: 90,
            width: 90,
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Colors.white)),
              Text(name, style: TextStyle(color: AppColors.subtitle, fontWeight: FontWeight.normal, fontSize: 10)),
            ],
          )
        ],
      ),
    );
  }
}
