import 'package:flutter/material.dart';

import 'widgets/pikachu/pikachu.dart';
import 'widgets/pokedex/base_layout.dart';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: BaseLayout(),
      body: Pikachu(),
      // body: TopSide(),
    );
  }
}

// BigCircleLed(),
//           CircleLed(
//             colorOne: ThemeColors.redLedInner,
//             colorTwo: ThemeColors.redLedOuter,
//           ),
//           SquareLed(
//             color: ThemeColors.greenLedOuter,
//             borderColor: ThemeColors.greenLedBorder,
//           ),
//           SquareButton(),
//           LinearButton(
//             color: ThemeColors.pokeballRedTop,
//             borderColor: ThemeColors.redLedBorder,
//           ),
//           LinearButton(
//             color: ThemeColors.lampOuter,
//             borderColor: ThemeColors.lampOuter,
//           ),
//           MotionControll(),
