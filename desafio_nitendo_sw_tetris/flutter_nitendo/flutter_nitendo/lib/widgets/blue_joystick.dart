import 'package:flutter/material.dart';
import 'package:flutter_nitendo/resources/colors.dart';

import 'buttons.dart';

class BlueJoystick extends StatelessWidget {
  final double height;
  final double width;

  const BlueJoystick({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      height: height - 36,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.leftSide,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(120),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: MinusButton(),
            ),
          ),
          SizedBox(height: 20),
          LargeButton(),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: ControlDirectionalButton(
              height: height,
              width: width,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.bottomLeft, child: SoundButton()),
          )
        ],
      ),
    );
  }
}
