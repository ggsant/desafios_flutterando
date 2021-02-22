import 'package:flutter/material.dart';

class LinearButton extends StatelessWidget {
  final Color color;
  final Color borderColor;

  const LinearButton({Key key, this.color, this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
    );
  }
}
