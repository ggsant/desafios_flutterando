import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class LargeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            ThemeColors.bigButtonLayer0Top,
            ThemeColors.bigButtonLayer0Bottom,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: ThemeColors.bigButtonLayerBorder),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ThemeColors.bigButtonLayer1Bottom,
              ThemeColors.bigButtonLayer1Top,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          shape: BoxShape.circle,
        ),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ThemeColors.bigButtonLayer2Top,
                ThemeColors.bigButtonLayer2Bottom
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(
              color: ThemeColors.bigButtonLayerBorder,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
