import 'package:flutter/material.dart';
import 'package:flutter_nitendo/resources/colors.dart';

class BannerFlutter extends StatelessWidget {
  final Widget screen;

  const BannerFlutter({Key key, this.screen}) : super(key: key);
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
