import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

import 'widgets/controll/buttons/linear_button.dart';
import 'widgets/controll/buttons/square_button.dart';
import 'widgets/controll/motion_controll/motion_controll.dart';

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
