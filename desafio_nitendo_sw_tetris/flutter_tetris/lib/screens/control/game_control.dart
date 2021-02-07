import 'package:flutter/material.dart';
import 'package:tetris/widgets/left_control.dart';

import 'direction_control.dart';

class GameController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Row(
        children: <Widget>[
          Expanded(child: LeftController()),
          Expanded(child: DirectionController()),
        ],
      ),
    );
  }
}
