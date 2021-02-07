import 'package:flutter/material.dart';
import 'package:tetris/gamer/gamer.dart';

import 'button.dart';
import 'description.dart';

class DropButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Description(
      text: 'drop',
      child: Button(
          enableLongPress: false,
          size: Size(90, 90),
          onTap: () {
            Game.of(context).drop();
          }),
    );
  }
}
