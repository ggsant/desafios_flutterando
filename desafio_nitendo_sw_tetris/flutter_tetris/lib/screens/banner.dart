import 'package:flutter/material.dart';
import 'package:tetris/resource/colors.dart';

class CustomBanner extends StatelessWidget {
  final Widget screen;

  const CustomBanner({Key key, this.screen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Banner(
      child: screen,
      message: 'Flutter',
      color: AppColors.lampOn,
      location: BannerLocation.topEnd,
      textStyle: TextStyle(
        color: AppColors.textBanner,
      ),
    );
  }
}
