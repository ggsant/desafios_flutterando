import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';
import 'widgets/controll/buttons/big_circle_led.dart';
import 'widgets/controll/buttons/circle_led.dart';
import 'widgets/controll/buttons/linear.dart';
import 'widgets/controll/buttons/square.dart';
import 'widgets/controll/buttons/square_led.dart';
import 'widgets/controll/motion_controll/motion_controll.dart';
import 'widgets/pikachu/pikachu.dart';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCircleLed(),
          CircleLed(
            colorOne: ThemeColors.redLedInner,
            colorTwo: ThemeColors.redLedOuter,
          ),
          SquareLed(
            color: ThemeColors.greenLedOuter,
            borderColor: ThemeColors.greenLedBorder,
          ),
          SquareButton(),
          LinearButton(
            color: ThemeColors.pokeballRedTop,
            borderColor: ThemeColors.redLedBorder,
          ),
          LinearButton(
            color: ThemeColors.lampOuter,
            borderColor: ThemeColors.lampOuter,
          ),
          MotionControll(),
        ],
      ),
    );
  }
}
