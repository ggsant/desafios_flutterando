import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'flutterando_theme.dart';

class ThemeApp {
  ThemeData theme() {
    return ThemeData(
      canvasColor: Colors.transparent,
      primaryColor: AppColors.primary,
      accentColor: AppColors.accent,
      backgroundColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.primary,
      textTheme: FlutterandoTheme().call(),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.accent,
        selectionColor: AppColors.accent.withOpacity(.1),
        selectionHandleColor: AppColors.accent,
      ),
      buttonTheme: ButtonThemeData(
        // disabledColor: AppColors.unselectedButton,
        buttonColor: AppColors.accent,
      ),
      iconTheme: IconThemeData(
        color: AppColors.accent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: AppColors.accent,
        ),
        unselectedIconTheme: IconThemeData(
          // color: AppColors.unselectedIcon,
        ),
        type: BottomNavigationBarType.fixed,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.accent,
        contentTextStyle: TextStyle(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
