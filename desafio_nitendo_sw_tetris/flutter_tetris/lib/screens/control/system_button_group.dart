import 'package:flutter/material.dart';
import 'package:tetris/gamer/gamer.dart';
import 'package:tetris/widgets/button.dart';
import 'package:tetris/widgets/description.dart';

const Size _SYSTEM_BUTTON_SIZE = const Size(28, 28);

class SystemButtonGroup extends StatelessWidget {
  static const _systemButtonColor = const Color(0xFF2dc421);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Description(
          text: 'pause',
          child: Button(
              size: _SYSTEM_BUTTON_SIZE,
              color: _systemButtonColor,
              enableLongPress: false,
              onTap: () {
                Game.of(context).pauseOrResume();
              }),
        ),
        Description(
          text: 'reset',
          child: Button(
              size: _SYSTEM_BUTTON_SIZE,
              enableLongPress: false,
              color: Colors.red,
              onTap: () {
                Game.of(context).reset();
              }),
        )
      ],
    );
  }
}
