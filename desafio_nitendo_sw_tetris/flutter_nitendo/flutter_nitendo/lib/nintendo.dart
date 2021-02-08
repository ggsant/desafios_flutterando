import 'package:flutter_nitendo/resources/colors.dart';
import 'package:flutter/material.dart';
import 'widgets/screen.dart';
import 'widgets/joystick.dart';

class Nintendo extends StatefulWidget {
  @override
  _NintendoState createState() => _NintendoState();
}

class _NintendoState extends State<Nintendo> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bgScreenTop,
              AppColors.bgScreenBottom,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Container(
              child: NintendoScreen(
                height: 300,
                width: 350,
              ),
            ),
            Container(
              child: JoyStick(
                height: 740,
                width: 360,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
