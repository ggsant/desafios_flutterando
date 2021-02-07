import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:tetris/widgets/control.dart';
import 'package:tetris/widgets/left_control.dart';

import 'direction_control.dart';

class GameControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LeftControl(),
          Column(
            children: [
              miniLogo(),
              Spacer(),
              NeuText(
                'F\nL\nU\nT\nE\nT\nR\nI\nX',
                emboss: true,
                parentColor: Colors.blue[300],
                spread: 10.0,
                style: TextStyle(fontSize: 20),
              ),
              Spacer(),
            ],
          ),
          DirectionControl(),
        ],
      ),
    );
  }
}
