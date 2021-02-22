import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MotionControll(),
        ],
      ),
    );
  }
}
