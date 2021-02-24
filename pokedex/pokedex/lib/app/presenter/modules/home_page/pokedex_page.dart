import 'package:flutter/material.dart';
import 'widgets/controll/buttons/big_button.dart';
import 'widgets/controll/buttons/big_circle_led.dart';
import 'widgets/controll/buttons/circle_led.dart';
import 'widgets/controll/buttons/linear.dart';
import 'widgets/controll/buttons/square_led.dart';
import 'widgets/controll/motion_controll/motion_controll.dart';
import 'widgets/pikachu/pikachu.dart';
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
          Positioned(left: 15, bottom: 220, child: Display()),
          Positioned(right: 70, bottom: 200, child: Pikachu()),
        ],
      ),
    );
  }
}
