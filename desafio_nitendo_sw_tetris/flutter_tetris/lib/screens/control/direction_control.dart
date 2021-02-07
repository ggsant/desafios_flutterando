import 'package:flutter/material.dart';
import 'package:tetris/resource/colors.dart';
import 'package:tetris/screens/game_play/gamer.dart';
import 'dart:math' as math;

import 'package:tetris/widgets/button.dart';

const Size _DIRECTION_BUTTON_SIZE = const Size(48, 48);

const double _DIRECTION_SPACE = 16;

const double _iconSize = 16;

class DirectionControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(top: 12, bottom: 15),
        decoration: BoxDecoration(
          color: AppColors.rightSide,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
          ),
        ),
        height: 350,
        width: 125,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SizedBox.fromSize(size: _DIRECTION_BUTTON_SIZE * 2.8),
            Transform.rotate(
              angle: math.pi / 4,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Transform.scale(
                        scale: 1.5,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: _iconSize,
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Icon(
                            Icons.arrow_right,
                            size: _iconSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Transform.scale(
                        scale: 1.5,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Icon(
                            Icons.arrow_left,
                            size: _iconSize,
                          ),
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: Transform.rotate(
                          angle: -math.pi / 4,
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: _iconSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Transform.rotate(
              angle: math.pi / 4,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(height: _DIRECTION_SPACE),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ButtonDirections(
                        icon: Icon(Icons.arrow_back),
                        enableLongPress: false,
                        onTap: () {
                          Game.of(context).rotate();
                        },
                      ),
                      SizedBox(width: _DIRECTION_SPACE),
                      ButtonDirections(
                        onTap: () {
                          Game.of(context).right();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: _DIRECTION_SPACE),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ButtonDirections(
                        onTap: () {
                          Game.of(context).left();
                        },
                      ),
                      SizedBox(width: _DIRECTION_SPACE),
                      ButtonDirections(
                        onTap: () {
                          Game.of(context).down();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: _DIRECTION_SPACE),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
