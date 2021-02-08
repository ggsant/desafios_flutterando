import 'package:flutter_nitendo/resources/colors.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'dart:math';

class RedJoystick extends StatelessWidget {
  final double height;
  final double width;

  const RedJoystick({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      height: height - 36,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.rightSide,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(120),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 8),
          Transform.translate(
            offset: Offset(-10.0, 20.0),
            child: Align(
              alignment: Alignment.topRight,
              child: MinusButton(),
            ),
          ),
          Transform.translate(
            offset: Offset(39.0, 11.0),
            child: Transform.rotate(
              angle: pi * .5,
              child: MinusButton(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ControlLetterButton(
              height: height,
              width: width,
            ),
          ),
          SizedBox(height: height * .1),
          LargeButton(),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.bottomRight, child: HomeButton()),
          )
        ],
      ),
    );
  }
}
