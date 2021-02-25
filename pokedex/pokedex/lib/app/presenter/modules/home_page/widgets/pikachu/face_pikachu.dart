import 'package:flutter/material.dart';
import 'dart:math';

import 'package:pokedex/app/presenter/core/colors/colors.dart';
import 'package:pokedex/app/presenter/modules/home_page/widgets/pikachu/eyes_pikachu.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 300,
      child: CustomPaint(painter: HeadPainter()),
    );
  }
}

class HeadPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final center = Offset(width / 2.5, height * 6 / 8);
    final dx = center.dx;
    final dy = center.dy;

    final outline = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.black;

    final paint = Paint()..color = ThemeColors.yellowLedOuter;

    final rect = Rect.fromCenter(
      center: center,
      height: height / 2.5,
      width: width / 3,
    );

    final path = Path()
      ..moveTo(dx + width / 5, dy)
      ..arcTo(rect, 0, pi + pi / 6, false)
      ..quadraticBezierTo(
        dx / 2.2 - width / 5.5 * .5,
        dy / 2.2,
        dx / 2.2 - width / 5.5 / 3.5,
        dy / 2.2 - height / 4.2 / 3.5,
      )
      ..quadraticBezierTo(
        dx / 2.5 + width / 5 / 5,
        dy / 2.5 - height / 4.2 / 3.5,
        dx - width / 5 * sin(pi / 7),
        dy - height / 4 * cos(pi / 7),
      )
      ..arcTo(rect, pi + pi / 3, pi / 3, false)
      ..quadraticBezierTo(
        dx / 2.5 + width / 5 * 2,
        dy / 4.5,
        dx + width / 5 * 1,
        dy / 4 + height / 4 * .5,
      )
      ..quadraticBezierTo(
        dx + width / 5 * 1.25,
        dy / 3 + height / 4 * .75,
        dx + width / 5 * sin(pi / 3),
        dy - height / 4 * cos(pi / 3),
      )
      ..arcTo(rect, -pi / 6, pi / 6, false);

    canvas..drawPath(path, paint)..drawPath(path, outline);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
