import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tetris/resource/colors.dart';

import 'left_control.dart';

Widget joyconesquerdo() {
  return Align(
    child: Container(
      padding: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white, width: 12),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(34), bottomLeft: Radius.circular(34))),
      height: 160,
      width: 69,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        ),
      ),
    ),
  );
}

Widget joycondireito() {
  return Align(
    child: Container(
      padding: EdgeInsets.only(top: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(34), bottomRight: Radius.circular(34))),
      height: 160,
      width: 60,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        ),
      ),
    ),
  );
}

Widget botaoJoycon({Widget title}) {
  return Container(
    height: 36,
    width: 36,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppColors.actionButtonTopLayer0Top,
          AppColors.actionButtonTopLayer0Bottom
        ],
      ),
    ),
    child: Container(
      height: 27,
      width: 27,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.actionButtonTopLayer0Top,
            AppColors.actionButtonTopLayer0Bottom
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: title,
    ),
  );
}

Widget joyconVermelho() {
  return Align(
    alignment: Alignment.centerRight,
    child: Container(
      padding: EdgeInsets.only(top: 12, right: 12, bottom: 15),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
          )),
      height: 350,
      width: 130,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 26,
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.only(top: 8),
                      height: 10,
                      width: 26,
                      color: AppColors.minusButtomTop,
                    ),
                  ),
                  Positioned(
                    right: 8,
                    child: Container(
                      height: 26,
                      width: 10,
                      color: AppColors.minusButtomTop,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: botaoJoycon(
                      title: Text(
                    "X",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: botaoJoycon(
                      title: Text("A", style: TextStyle(color: Colors.white))),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: botaoJoycon(
                      title: Text("Y", style: TextStyle(color: Colors.white))),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: botaoJoycon(
                      title: Text("B", style: TextStyle(color: Colors.white))),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          analogico(),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 30,
              width: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.homeLayer0Border),
                  shape: BoxShape.circle,
                  color: AppColors.homeLayer0Top),
              child: Container(
                height: 23,
                width: 23,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.homeLayer1Border),
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.soundLayer1Top,
                        AppColors.soundLayer1Bottom,
                      ]),
                ),
                child: Icon(
                  Icons.home,
                  size: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget miniLogo() {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.only(
          top: 10,
        ),
        margin: EdgeInsets.only(left: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.bgScreenBottom,
            border: Border.all(color: Colors.black, width: 6),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(17), bottomLeft: Radius.circular(17))),
        height: 80,
        width: 34,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 15,
            width: 15,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Container(
        padding: EdgeInsets.only(top: 35),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(17),
                bottomRight: Radius.circular(17))),
        height: 80,
        width: 34,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.bgScreenBottom),
          ),
        ),
      ),
    ],
  );
}
