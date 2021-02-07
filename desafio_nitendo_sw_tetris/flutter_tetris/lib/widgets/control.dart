import 'package:flutter/material.dart';
import 'package:tetris/resource/colors.dart';

Widget miniLogo() {
  return Padding(
    padding: EdgeInsets.only(left: 10.0),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.bgScreenBottom,
              border: Border.all(color: Colors.white, width: 6),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  bottomLeft: Radius.circular(17))),
          height: 50,
          width: 20,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 5,
              width: 5,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 5),
        Container(
          padding: EdgeInsets.only(top: 35),
          margin: EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(17),
                  bottomRight: Radius.circular(17))),
          height: 50,
          width: 20,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.bgScreenBottom),
            ),
          ),
        ),
      ],
    ),
  );
}
