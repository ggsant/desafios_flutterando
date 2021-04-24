import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/colors.dart';

class PlataformMiddleWidget extends StatelessWidget {
  final Size size;

  const PlataformMiddleWidget({
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
            // Row1
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.darkRed,
            ),
            // Row2
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.yellow,
            ),
            // Row3
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.yellow,
            ),
            // Row4
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.brown1,
            ),
            // Row5
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.brown3,
            ),
            // Row6
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.brown4,
            ),
            // Row7
            Container(
              height: constraints.maxHeight * 0.0625,
              width: constraints.maxWidth * 1,
              color: AppColors.brown1,
            ),
            // Row8
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
              ],
            ),
            // Row9
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
              ],
            ),
            // Row10
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
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
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
              ],
            ),
            // Row11
            Row(
              children: [
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
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown1,
                ),
              ],
            ),
            // Row12
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
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
            // Row13
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown2,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
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
              ],
            ),
            // Row14
            Row(
              children: [
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
                  color: AppColors.brown4,
                ),
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown3,
                ),
              ],
            ),
            // Row15
            Row(
              children: [
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
                Container(
                  height: constraints.maxHeight * 0.0625,
                  width: constraints.maxWidth * 0.25,
                  color: AppColors.brown4,
                ),
              ],
            ),
            // Row16
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
