import 'dart:ui';

import 'package:flutter/material.dart';

//--------------------------------------------------------------------//
//------------------------------Colors--------------------------------//
//--------------------------------------------------------------------//

class AppColors {
  static const Color primary = Color(0xff150F20);
  static const Color accent = Color(0xffEFC932);
  static const Color transparent = Colors.transparent;
  static const Color black = Colors.black;
  static const Color white = Colors.white;

  static const Color bgScaffold = Color(0xff150F20);

  //--------------------------------------------------------------------//
  //----------------------------Ground----------------------------------//
  //--------------------------------------------------------------------//
  static const Color groundGreen1 = Color(0xffF8F8F8);
  static const Color groundGreen2 = Color(0xff9FD757);
  static const Color groundGreen3 = Color(0xff4F9F27);
  static const Color groundGreen4 = Color(0xff004000);

  //--------------------------------------------------------------------//
  //----------------------------PlataformColors-------------------------//
  //--------------------------------------------------------------------//
  static const Color yellow = Color(0xffF8E068);
  static const Color brown1 = Color(0xffF8C868);
  static const Color brown2 = Color(0xffE0A850);
  static const Color brown3 = Color(0xffC08040);
  static const Color brown4 = Color(0xffA05830);
  static const Color darkRed = Color(0xff802820);

  //--------------------------------------------------------------------//
  //----------------------------GradientBg------------------------------//
  //--------------------------------------------------------------------//
  static const Gradient gradientBg = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xff62B0E1),
      const Color(0xffBCE5FB),
    ],
  );

  //--------------------------------------------------------------------//
  //----------------------------Lattice---------------------------------//
  //--------------------------------------------------------------------//
  static const Color lightPink = Color(0xffEB5E60);
  static const Color pink = Color(0xffC83B63);
  static const Color darkPink = Color(0xff882453);

  //--------------------------------------------------------------------//
  //----------------------------Stair-----------------------------------//
  //--------------------------------------------------------------------//
  static const Color lightBlue = Color(0xff9FEDFF);
  static const Color blue = Color(0xff2CBCF5);
  static const Color darkBlue = Color(0xff0D5FC8);

  //--------------------------------------------------------------------//
  //----------------------------BigButton-------------------------------//
  //--------------------------------------------------------------------//
  static const Color bigButtonLayerBorder = Color(0xff000000);
  //Layer0
  static const Color bigButtonLayer0Top = Color(0xff686D70);
  static const Color bigButtonLayer0Bottom = Color(0xff050F11);
  //Layer1
  static const Color bigButtonLayer1Top = Color(0xff050F11);
  static const Color bigButtonLayer1Bottom = Color(0xff686D70);
  //Layer2
  static const Color bigButtonLayer2Top = Color(0xff676A6F);
  static const Color bigButtonLayer2Bottom = Color(0xff242625);
}
