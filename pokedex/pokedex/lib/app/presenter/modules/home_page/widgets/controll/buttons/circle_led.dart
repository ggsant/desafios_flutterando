import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class SmallLed extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;
  final Color colorBorder;

  const SmallLed({Key key, this.colorOne, this.colorTwo, this.colorBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        border: Border.all(
          color: colorBorder,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
        gradient: RadialGradient(
          colors: [Colors.white, colorOne, colorTwo],
        ),
      ),
    );
  }
}

class TripleLed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SmallLed(
            colorOne: ThemeColors.redLedInner,
            colorTwo: ThemeColors.redLedOuter,
            colorBorder: ThemeColors.redLedBorder,
          ),
          SizedBox(width: 10),
          SmallLed(
            colorOne: ThemeColors.yellowLedInner,
            colorTwo: ThemeColors.yellowLedOuter,
            colorBorder: ThemeColors.yellowLedBorder,
          ),
          SizedBox(width: 10),
          SmallLed(
            colorOne: ThemeColors.greenLedInner,
            colorTwo: ThemeColors.greenLedOuter,
            colorBorder: ThemeColors.greenLedBorder,
          ),
        ],
      ),
    );
  }
}
