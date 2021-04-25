import 'package:flutter/material.dart';
import 'package:kirby/app/core/helpers/enums/directions.dart';

class Kirby extends StatelessWidget {
  final Move direction;
  final bool variant;
  final bool isTop;
  final bool isOver;
  final double kirbyDx;
  final double kirbyDy;

  const Kirby({
    Key? key,
    required this.direction,
    required this.variant,
    required this.isTop,
    required this.isOver,
    required this.kirbyDx,
    required this.kirbyDy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var img;

    switch (direction) {
      case Move.left:
        if (variant) {
          img = Image.asset('assets/sprites/kirby/walk/walk1.png', height: 30);
        } else {
          img = Image.asset('assets/sprites/kirby/walk/walk2.png', height: 30);
        }
        break;

      case Move.right:
        if (variant) {
          img = Image.asset('assets/sprites/kirby/walk/walk2.png', height: 30);
        } else {
          img = Image.asset('assets/sprites/kirby/walk/walk3.png', height: 30);
        }
        break;

      case Move.jump:
        img = Image.asset('assets/sprites/kirby/float/walk1.png', height: 30);
        break;
      default:
    }

    return AnimatedContainer(
      alignment: Alignment(kirbyDx, kirbyDy),
      duration: Duration(milliseconds: 50),
      child: img,
    );
  }
}
