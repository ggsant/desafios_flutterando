import 'package:flutter/material.dart';
import 'package:tetris/resource/colors.dart';
import 'package:tetris/screens/game_play/gamer.dart';

import 'button.dart';
import 'description.dart';

class LeftController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(
          top: 15,
          left: 12,
        ),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(60),
          ),
        ),
        height: 300,
        width: 130,
        child: Column(
          children: [
            SizedBox(height: 10),
            Description(
              text: 'pause',
              child: Button(
                enableLongPress: false,
                onTap: () {
                  Game.of(context).pauseOrResume();
                },
              ),
            ),
            SizedBox(height: 18),
            Description(
              text: 'reset',
              child: Button(
                enableLongPress: false,
                onTap: () {
                  Game.of(context).reset();
                },
              ),
            ),
            SizedBox(height: 18),
            Description(
              text: 'drop',
              child: Button(
                enableLongPress: false,
                onTap: () {
                  Game.of(context).drop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget analogico() {
  return Container(
    height: 50,
    width: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.bigButtonLayerBorder),
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [AppColors.bigButtonLayer0Top, AppColors.bigButtonLayer0Bottom],
      ),
    ),
    child: Container(
      height: 45,
      width: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.bigButtonLayer1Top,
            AppColors.bigButtonLayer1Botto,
          ],
        ),
      ),
      child: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.bigButtonLayerBorder, width: 1),
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.bigButtonLayer2Top,
              AppColors.bigButtonLayer2Botto,
            ],
          ),
        ),
      ),
    ),
  );
}
