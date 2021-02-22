import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class SquareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23,
      height: 23,
      color: ThemeColors.soundLayer1Bottom,
      alignment: Alignment.center,
      child: Container(
        width: 20,
        height: 20,
        alignment: Alignment.center,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ThemeColors.soundLayer2,
          ),
        ),
      ),
    );
  }
}
