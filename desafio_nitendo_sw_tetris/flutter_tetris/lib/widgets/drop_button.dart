import 'package:flutter/material.dart';
import 'package:tetris/screens/game_play/gamer.dart';

import 'button.dart';
import 'description.dart';

class DropButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Description(
      text: 'drop',
      child: Button(
          enableLongPress: false,
          onTap: () {
            Game.of(context).drop();
          }),
    );
  }
}
