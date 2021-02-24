import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class SquareLed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 54,
      decoration: BoxDecoration(
        color: ThemeColors.greenLedBorder,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: ThemeColors.greenLedBorder,
        ),
        gradient: LinearGradient(
          colors: [ThemeColors.greenLedInner, ThemeColors.greenLedOuter],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
