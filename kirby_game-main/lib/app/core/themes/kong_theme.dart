import 'package:flutter/material.dart';

import '../constants/colors.dart';

class KongTheme {
  TextTheme call() {
    return TextTheme(
      headline1: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: AppColors.black,
      ),
      headline2: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
      headline3: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 16,
        color: AppColors.black,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      headline5: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      headline6: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 10,
      ),
    );
  }
}
