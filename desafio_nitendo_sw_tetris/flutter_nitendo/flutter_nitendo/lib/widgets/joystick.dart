import 'package:flutter/material.dart';
import 'package:flutter_nitendo/resources/colors.dart';
import 'package:flutter_nitendo/widgets/blue_joystick.dart';
import 'package:flutter_nitendo/widgets/red_joystick.dart';

import 'logo.dart';

class JoyStick extends StatelessWidget {
  final double height;
  final double width;

  const JoyStick({Key key, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlueJoystick(
          height: height * .5,
          width: width * .35,
        ),
        CentralJoystick(),
        RedJoystick(
          height: height * .5,
          width: width * .35,
        )
      ],
    );
  }
}

class CentralJoystick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: index == 0 ? AppColors.lampOn : AppColors.lampOff,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Logo(
                    color: AppColors.smallLogo,
                    height: 100,
                    width: 50,
                    circleColor: AppColors.bgScreenBottom,
                  ),
                ],
              ),
              Column(
                children: List.generate(
                  4,
                  (index) => Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lampOff,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
