import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';
import 'dart:math' as math;

import 'package:pokedex/app/presenter/modules/home_page/widgets/controll/buttons/square.dart';

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: DisplayBaseClipper(),
          child: Container(
            alignment: Alignment.topCenter,
            width: 290,
            height: 260,
            color: ThemeColors.screenFrame,
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ClipPath(
                  clipper: DisplayClipper(),
                  child: Container(
                    width: 260,
                    height: 190,
                    color: ThemeColors.screnFrameInternal,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: ThemeColors.pokeballRedBottom,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SquareButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DisplayClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var rectRightTop =
        Rect.fromCircle(center: Offset(size.width - 15, 15), radius: 15);
    var rectRightBottom = Rect.fromCircle(
        center: Offset(size.width - 15, size.height - 15), radius: 15);
    var rectLeftBottom =
        Rect.fromCircle(center: Offset(15, size.height - 15), radius: 15);
    var rectLeftTop = Rect.fromCircle(center: Offset(15, 15), radius: 15);

    var pathScreen = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 15, 0)
      ..arcTo(rectRightTop, -(math.pi / 2), math.pi / 2, false)
      ..lineTo(size.width, size.height)
      ..arcTo(rectRightBottom, 0, math.pi / 2, false)
      ..lineTo(15, size.height)
      ..arcTo(rectLeftBottom, math.pi / 2, math.pi / 2, false)
      ..lineTo(0, 15)
      ..arcTo(rectLeftTop, math.pi, math.pi / 2, false);

    return pathScreen;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      oldClipper != this;
}

class DisplayBaseClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var rectRightTop =
        Rect.fromCircle(center: Offset(size.width - 15, 15), radius: 15);
    var rectRightBottom = Rect.fromCircle(
        center: Offset(size.width - 15, size.height - 15), radius: 15);

    var rectLeftTop = Rect.fromCircle(center: Offset(15, 15), radius: 15);

    var pathScreen = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 15, 0)
      ..arcTo(rectRightTop, -(math.pi / 2), math.pi / 2, false)
      ..lineTo(size.width, size.height)
      ..arcTo(rectRightBottom, 0, math.pi / 2, false)
      ..lineTo(39, size.height)
      ..lineTo(0, size.height - 39)
      ..lineTo(0, 15)
      ..arcTo(rectLeftTop, math.pi, math.pi / 2, false);

    return pathScreen;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      oldClipper != this;
}
