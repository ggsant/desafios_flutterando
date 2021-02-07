import 'package:flutter/material.dart';
import 'package:tetris/widgets/control.dart';
import 'package:tetris/widgets/left_control.dart';

import 'direction_control.dart';

class GameControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        children: <Widget>[
          LeftControl(),
          SizedBox(width: 15),
          miniLogo(),
          DirectionControl(),
        ],
      ),
    );
  }
}
