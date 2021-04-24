import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'kong_theme.dart';

class ThemeApp {
  ThemeData theme() {
    return ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: const Color(0xffFFFFFF),
      accentColor: const Color(0xffE7343F),
      backgroundColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.primary,
      textTheme: KongTheme().call(),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.accent,
        selectionColor: AppColors.accent.withOpacity(.1),
        selectionHandleColor: AppColors.accent,
      ),
      // buttonTheme: ButtonThemeData(
      //   disabledColor: AppColors.unselectedButton,
      //   buttonColor: AppColors.accent,
      // ),
      iconTheme: IconThemeData(
        color: AppColors.accent,
      ),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //   selectedIconTheme: IconThemeData(
      //     color: AppColors.accent,
      //   ),
      //   unselectedIconTheme: IconThemeData(
      //     color: AppColors.unselectedIcon,
      //   ),
      //   type: BottomNavigationBarType.fixed,
      // ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.accent,
        contentTextStyle: TextStyle(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
