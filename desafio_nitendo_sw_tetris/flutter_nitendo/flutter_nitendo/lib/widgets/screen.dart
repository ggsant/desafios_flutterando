import 'package:flutter/material.dart';
import 'package:flutter_nitendo/resources/colors.dart';

import 'logo.dart';

class NintendoScreen extends StatelessWidget {
  final double height;
  final double width;

  const NintendoScreen({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 12, right: 12),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.screen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Logo(
        color: AppColors.bigLogo,
        height: 140,
        width: 60,
        circleColor: Colors.black,
      ),
    );
  }
}
