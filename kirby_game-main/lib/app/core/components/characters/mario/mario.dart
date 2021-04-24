import 'package:flutter/material.dart';

import '../../../helpers/enums/directions.dart';

class Mario extends StatelessWidget {
  final Move direction;
  final bool variant;
  final bool isTop;
  final bool isOver;
  final double marioDx;
  final double marioDy;

  const Mario({
    Key? key,
    this.direction = Move.right,
    this.variant = false,
    this.isTop = false,
    this.isOver = false,
    this.marioDx = 0,
    this.marioDy = 0,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var img;

    switch (direction) {
      case Move.up:
        if (isOver) {
          img = Image.asset(
            'assets/sprites/walk/marioRight.png',
            height: 23,
          );
        } else {
          if (isTop) {
            img = Image.asset(
              'assets/sprites/stairs/marioStairsTop.png',
              height: 23,
            );
          } else {
            if (variant) {
              img = Image.asset(
                'assets/sprites/stairs/marioStairsRight.png',
                height: 23,
              );
            } else {
              img = Image.asset(
                'assets/sprites/stairs/marioStairsLeft.png',
                height: 23,
              );
            }
          }
        }

        break;
      case Move.down:
        if (isOver) {
          img = Image.asset(
            'assets/sprites/walk/marioRight.png',
            height: 23,
          );
        } else {
          if (isTop) {
            img = Image.asset(
              'assets/sprites/stairs/marioStairsTop.png',
              height: 23,
            );
          } else {
            if (variant) {
              img = Image.asset(
                'assets/sprites/stairs/marioStairsRight.png',
                height: 23,
              );
            } else {
              img = Image.asset(
                'assets/sprites/stairs/marioStairsLeft.png',
                height: 23,
              );
            }
          }
        }
        break;
      case Move.left:
        if (variant) {
          img = Image.asset('assets/sprites/walk/marioLeft2.png', height: 23);
        } else {
          img = Image.asset('assets/sprites/walk/marioLeft.png', height: 23);
        }

        break;
      case Move.right:
        if (variant) {
          img = Image.asset('assets/sprites/walk/marioRight2.png', height: 23);
        } else {
          img = Image.asset('assets/sprites/walk/marioRight.png', height: 23);
        }
        break;
      case Move.jump:
        img = Image.asset('assets/sprites/stairs/marioRight.png', height: 23);
        break;
      default:
    }

    return AnimatedContainer(
      alignment: Alignment(marioDx, marioDy),
      duration: Duration(milliseconds: 0),
      child: img,
    );
  }
}
