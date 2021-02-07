import 'package:flutter/material.dart';
import 'package:tetris/screens/game_play/gamer.dart';

import 'button.dart';
import 'description.dart';

class LeftControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
          ),
        ),
        height: 300,
        width: 110,
        child: Column(
          children: [
            SizedBox(height: 10),
            Description(
              text: 'Pausar',
              child: Button(
                enableLongPress: false,
                onTap: () {
                  Game.of(context).pauseOrResume();
                },
              ),
            ),
            SizedBox(height: 18),
            Description(
              text: 'Recomeçar',
              child: Button(
                enableLongPress: false,
                onTap: () {
                  Game.of(context).reset();
                },
              ),
            ),
            SizedBox(height: 18),
            Description(
              text: 'Avançar',
              child: Button(
                enableLongPress: false,
                onTap: () {
                  Game.of(context).drop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
