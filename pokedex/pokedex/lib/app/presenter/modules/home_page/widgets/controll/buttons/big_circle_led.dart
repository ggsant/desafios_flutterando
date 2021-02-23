import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class BigCircleLed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ThemeColors.screenFrame,
        shape: BoxShape.circle,
      ),
      child: Container(
        width: 70,
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ThemeColors.screenFrame,
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              ThemeColors.lampInner,
              ThemeColors.lampOuter,
            ],
            focal: Alignment.center,
            focalRadius: .35,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: ThemeColors.screenFrame,
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      ThemeColors.white,
                      ThemeColors.lampShineOuter,
                    ],
                    focal: Alignment.center,
                    focalRadius: .1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
