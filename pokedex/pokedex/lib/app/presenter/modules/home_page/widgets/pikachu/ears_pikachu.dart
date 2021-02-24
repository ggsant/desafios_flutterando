import 'package:flutter/material.dart';
import 'dart:math' as math;

class Ears extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 90,
          height: 90,
          child: CustomPaint(painter: EarsCustomModel()),
        ),
        // Positioned(
        //   left: 23,
        //   top: 20,
        //   child: Container(
        //     width: 52.37,
        //     height: 50.55,
        //     child: CustomPaint(painter: EarsCustomBlack()),
        //   ),
        // ),
      ],
    );
  }
}

class EarsCustomBlack extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0;

    Path path = Path();
    path.addOval(Rect.fromLTWH(
        size.width / 2, size.height / 2, size.width / 4, size.height / 2));
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;
}

// class Ears extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 52.37,
//       height: 48.55,
//       child: CustomPaint(painter: EarsCustomBlack()),
//     );
//   }
// }

class EarsCustomModel extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0.0, size.width / 5, size.height);
    final startAngle = math.pi;
    final sweepAngle = math.pi / 1.1;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;
}

class EarsCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0.0, size.width / 4, size.height);
    final startAngle = math.pi;
    final sweepAngle = math.pi;
    final useCenter = false;
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
  }

  // @override
  // void paint(Canvas canvas, Size size) {
  //   Paint paint = Paint()
  //     ..color = Colors.yellow
  //     ..style = PaintingStyle.fill
  //     ..strokeWidth = 10.0;

  //   Path path = Path();
  //   path.addOval(Rect.fromLTWH(
  //       size.width / 2, size.height / 2, size.width / 4, size.height / 2));
  //   canvas.drawPath(path, paint);
  // }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;
}
