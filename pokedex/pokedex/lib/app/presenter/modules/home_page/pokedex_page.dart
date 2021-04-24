import 'package:flutter/material.dart';
import 'widgets/controll/buttons/big_button.dart';
import 'widgets/controll/buttons/big_circle_led.dart';
import 'widgets/controll/buttons/circle_led.dart';
import 'widgets/controll/buttons/linear.dart';
import 'widgets/controll/buttons/square_led.dart';
import 'widgets/controll/motion_controll/motion_controll.dart';
import 'widgets/list_pokemon/pokemon_list_cards.dart';
import 'widgets/pikachu/cheek_pikachu.dart';
import 'widgets/pikachu/eyes_pikachu.dart';
import 'widgets/pikachu/pikachu.dart';
import 'widgets/pikachu/snout_pikachu.dart';
import 'widgets/pokedex/base_layout.dart';
import 'widgets/pokedex/display/display.dart';

class PokedexPage extends StatefulWidget {
  @override
  _PokedexState createState() => _PokedexState();
}

class _PokedexState extends State<PokedexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BaseLayout(),
          Positioned(left: 30, top: 45, child: BigCircleLed()),
          Positioned(left: 150, top: 45, child: TripleLed()),
          Positioned(left: 90, bottom: 174, child: LinearButtons()),
          Positioned(left: 90, bottom: 50, child: SquareLed()),
          Positioned(right: 50, bottom: 60, child: MotionControll()),
          Positioned(left: 20, bottom: 95, child: LargeButton()),
          // Positioned(left: 15, bottom: 220, child: Display()),
          Positioned(right: 20, bottom: 210, child: Pikachu()),
          Positioned(right: 170, bottom: 320, child: Eyes()),
          Positioned(right: 125, bottom: 250, child: Snout()),
          Positioned(left: 13, bottom: 280, child: LeftCheek()),
          Positioned(right: 57, bottom: 276, child: RightCheek()),
          // Positioned(left: 1, bottom: 260, child: PokemonListCards()),
        ],
      ),
    );
  }
}
