import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LatticeWidget extends StatelessWidget {
  final Size size;

  const LatticeWidget({
    Key? key,
    this.size = const Size(36, 24),
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
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: AppColors.lightPink,
            ),
            Container(
                width: constraints.maxWidth * 1,
                height: constraints.maxHeight * .06,
                color: AppColors.pink),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: AppColors.darkPink,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: constraints.maxWidth * .12,
                  height: constraints.maxHeight * .06,
                  color: AppColors.darkPink,
                ),
                Container(
                  width: constraints.maxWidth * .12,
                  height: constraints.maxHeight * .06,
                  color: AppColors.darkPink,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: constraints.maxWidth * .17,
                  height: constraints.maxHeight * .06,
                  color: AppColors.darkPink,
                ),
                Container(
                  width: constraints.maxWidth * .17,
                  height: constraints.maxHeight * .06,
                  color: AppColors.darkPink,
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: AppColors.darkPink,
                  ),
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: AppColors.darkPink,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: AppColors.darkPink,
                  ),
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: AppColors.darkPink,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: AppColors.pink,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: AppColors.darkPink,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: constraints.maxWidth * .46,
                  height: constraints.maxHeight * .06,
                  color: AppColors.pink,
                ),
                Expanded(
                    child: Container(
                  height: constraints.maxHeight * .06,
                  color: AppColors.darkPink,
                )),
                Container(
                  width: constraints.maxWidth * .46,
                  height: constraints.maxHeight * .06,
                  color: AppColors.pink,
                ),
              ],
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: AppColors.darkPink,
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: AppColors.lightPink,
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: AppColors.pink,
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: AppColors.darkPink,
            ),
          ],
        );
      }),
    );
  }
}
