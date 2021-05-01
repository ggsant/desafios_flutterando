import 'package:flutter/material.dart';

class FlutterandoTheme {
  static const FONT_FAMILY = 'Milliard';
  TextTheme call() {
    return TextTheme(
      //titulo
      bodyText1: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
      //autor
      headline1: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      //action button card
      headline2: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 8,
        fontWeight: FontWeight.w500,
        // color: AppColors.mainText,
      ),
      //section name
      headline3: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      //title card
      headline4: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ),
      //subtitle card
      headline5: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      //autor book
      headline6: TextStyle(
        fontFamily: FONT_FAMILY,
        fontSize: 9,
        fontWeight: FontWeight.w500,
      ),
      //AppBarName

      // //body 2
      // bodyText2: GoogleFonts.raleway(
      //   color: Color(0xFF969696),
      //   letterSpacing: -0.04,
      //   fontSize: 12,
      //   fontWeight: FontWeight.bold,
      // ),
      // subtitle1: ,
      // //Footnote 1
      // subtitle2: GoogleFonts.raleway(
      //   color: Colors.white,
      //   letterSpacing: 0,
      //   fontSize: 16,
      //   fontWeight: FontWeight.normal,
      // ),
      //Titulo
      // caption: ,
      //buttonLabel
      // button: ,
    );
  }
}
