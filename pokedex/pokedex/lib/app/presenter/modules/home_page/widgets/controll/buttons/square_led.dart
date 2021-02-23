import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class SquareLed extends StatelessWidget {
  final Color color;
  final Color borderColor;
  const SquareLed({
    Key key,
    this.color,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 54,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: borderColor,
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
