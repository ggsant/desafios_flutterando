import 'package:flutter/material.dart';

class CircleLed extends StatefulWidget {
  final Color colorOne;
  final Color colorTwo;

  const CircleLed({Key key, this.colorOne, this.colorTwo}) : super(key: key);

  @override
  _CircleLedState createState() => _CircleLedState();
}

class _CircleLedState extends State<CircleLed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
        gradient: RadialGradient(
          colors: [Colors.white, widget.colorOne, widget.colorTwo],
        ),
      ),
    );
  }
}
