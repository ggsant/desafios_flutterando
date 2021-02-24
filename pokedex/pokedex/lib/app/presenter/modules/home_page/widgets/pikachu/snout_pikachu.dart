import 'package:flutter/material.dart';

class Snout extends StatelessWidget {
  const Snout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            height: 75,
            child: SnoutPart(),
          ),
          Positioned(
            left: 25,
            height: 75,
            child: SnoutPart(),
          ),
          Positioned(
            left: 22,
            height: 78,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: CircleAvatar(
                radius: 1,
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SnoutPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 20,
      child: CustomPaint(painter: SnoutCustom()),
    );
  }
}

class SnoutCustom extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = .5;

    Path path = Path();
    path.moveTo(0, size.height / 1.8);
    path.quadraticBezierTo(
        size.width / 5, size.height / 1.5, size.width / 2, size.height / 1.9);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>
      oldDelegate != this;
}
