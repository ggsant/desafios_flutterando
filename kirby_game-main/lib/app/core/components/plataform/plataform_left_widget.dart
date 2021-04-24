import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/colors.dart';

class PlataformLeftWidget extends StatelessWidget {
  final Size size;

  const PlataformLeftWidget({
    Key? key,
    this.size = const Size(8, 32),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.transparent,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.75,
                  color: AppColors.darkRed,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.75,
                  color: AppColors.yellow,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.75,
                  color: AppColors.yellow,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.75,
                  color: AppColors.brown1,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.75,
                  color: AppColors.brown3,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.5,
                  color: AppColors.brown4,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.5,
                  color: AppColors.brown1,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.5,
                  color: AppColors.brown1,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.transparent,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.darkRed,
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
