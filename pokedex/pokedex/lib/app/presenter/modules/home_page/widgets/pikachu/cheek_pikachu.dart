import 'dart:math';

import 'package:flutter/material.dart';

class LeftCheek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: CustomPaint(painter: LeftCheekCustom()),
    );
  }
}

class LeftCheekCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final center = Offset(width / 2, height * 3 / 4);
    final dx = center.dx;
    final dy = center.dy;

    const degree = pi / 2 + pi / 6;

    final proportionWidth = width / 5;
    final proportionHeight = height / 4;

    final rect = Rect.fromCenter(
      center: center,
      height: height / 2,
      width: width / 2.5,
    );

    final cheek = Rect.fromCircle(
      center: Offset(
        dx + proportionWidth * cos(degree + pi / 12),
        dy + proportionHeight * sin(degree + pi / 12),
      ),
      radius: height / 15,
    );

    final path = Path()
      ..moveTo(
        dx + proportionWidth * cos(degree),
        dy + proportionHeight * sin(degree),
      )
      ..arcTo(rect, degree, pi / 6, false)
      ..arcTo(cheek, pi + pi / 3, pi - pi / 3, false)
      ..close();

    final paint = Paint()..color = Colors.pink;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class RightCheek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      child: CustomPaint(painter: RightCheekCustom()),
    );
  }
}

class RightCheekCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final center = Offset(width / 2, height * 3 / 4);
    final dx = center.dx;
    final dy = center.dy;
    const degree = pi / 10;
    final proportionWidth = width / 5;
    final proportionHeight = height / 4;

    final cheek = Rect.fromCircle(
      center: Offset(
        dx + proportionWidth * cos(degree + pi / 10),
        dy + proportionHeight * sin(degree + pi / 10),
      ),
      radius: height / 15,
    );

    final rect = Rect.fromCenter(
      center: center,
      height: height / 2,
      width: width / 2.5,
    );

    final path = Path()
      ..moveTo(
        dx + proportionWidth * cos(degree),
        dy + proportionHeight * sin(degree),
      )
      ..arcTo(rect, degree, pi / 6, false)
      ..arcTo(cheek, pi / 2 + pi / 3, pi - pi / 6, false)
      ..close();

    final paint = Paint()..color = Colors.pink;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
