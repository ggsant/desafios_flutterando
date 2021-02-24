import 'package:flutter/material.dart';

import 'widgets/motion_controll_buttons.dart';

class MotionControll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 105,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              MotionControlButtonEmpty(),
              MotionControllButtonUp(),
              MotionControlButtonEmpty(),
            ],
          ),
          Row(
            children: [
              MotionControllButtonLeft(),
              MotionControllButtonCircle(),
              MotionControllButtonRight()
            ],
          ),
          Row(
            children: [
              MotionControlButtonEmpty(),
              MotionControllButtonDown(),
              MotionControlButtonEmpty(),
            ],
          )
        ],
      ),
    );
  }
}
