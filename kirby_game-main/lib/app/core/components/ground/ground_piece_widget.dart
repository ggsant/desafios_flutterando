import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/colors.dart';

class GroundPieceWidget extends StatelessWidget {
  final Size size;

  const GroundPieceWidget({
    Key? key,
    this.size = const Size(35, 78),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Container(
              height: constraints.maxHeight * 0.026,
              width: constraints.maxWidth,
              color: AppColors.groundGreen4,
            ),
            Container(
              height: constraints.maxHeight * 0.026,
              width: constraints.maxWidth,
              color: AppColors.groundGreen1,
            ),
            Container(
              height: constraints.maxHeight * 0.05,
              width: constraints.maxWidth,
              color: AppColors.groundGreen2,
            ),
            Row(
              children: [
                Container(
                  height: constraints.maxHeight * 0.038,
                  width: constraints.maxWidth * 0.18,
                  color: AppColors.groundGreen2,
                ),
                Container(
                  height: constraints.maxHeight * 0.038,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.groundGreen3,
                ),
                Container(
                  height: constraints.maxHeight * 0.038,
                  width: constraints.maxWidth * 0.48,
                  color: AppColors.groundGreen2,
                ),
                Container(
                  height: constraints.maxHeight * 0.038,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.groundGreen3,
                ),
                Container(
                  height: constraints.maxHeight * 0.038,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen2,
                ),
              ],
            ),
            //Size(35, 78)
            Row(
              children: [
                //4x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.groundGreen2,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //13x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.36,
                  color: AppColors.groundGreen2,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
              ],
            ),
            Row(
              children: [
                //4x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //11x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.24,
                  color: AppColors.groundGreen2,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
              ],
            ),
            Row(
              children: [
                //4x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.groundGreen2,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),

                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
              ],
            ),
            Row(
              children: [
                //4x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.groundGreen3,
                ),
                //
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.18,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
              ],
            ),
            Row(
              children: [
                //4x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                //
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.groundGreen3,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
              ],
            ),
            Row(
              children: [
                //4x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.12,
                  color: AppColors.black,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
                //5x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.14,
                  color: AppColors.white,
                ),
                //2x2
                Container(
                  height: constraints.maxHeight * 0.026,
                  width: constraints.maxWidth * 0.06,
                  color: AppColors.white,
                ),
              ],
            ),
            Container(
              height: constraints.maxHeight * 0.704,
              width: constraints.maxWidth,
              color: AppColors.white,
            ),
          ],
        );
      }),
    );
  }
}
