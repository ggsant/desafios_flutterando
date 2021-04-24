import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class StairBotWidget extends StatelessWidget {
  final Size size;

  const StairBotWidget({
    Key? key,
    this.size = const Size(26, 12),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //handrail left
            Container(
              height: constraints.maxHeight * 1,
              width: constraints.maxWidth * .11,
              color: AppColors.blue,
            ),
            Column(
              children: [
                Container(
                  height: constraints.maxHeight * .25,
                ),
                Row(
                  children: [
                    //handrail center left
                    Container(
                      height: constraints.maxHeight * .256,
                      width: constraints.maxWidth * .058,
                      color: AppColors.darkBlue,
                    ),
                    Container(
                      height: constraints.maxHeight * .256,
                      width: constraints.maxWidth * .058,
                      color: AppColors.blue,
                    ),
                    //handrail center middle
                    Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * .128,
                          width: constraints.maxWidth * .544,
                          color: AppColors.lightBlue,
                        ),
                        Container(
                          height: constraints.maxHeight * .128,
                          width: constraints.maxWidth * .544,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                    //handrail center right
                    Container(
                      height: constraints.maxHeight * .256,
                      width: constraints.maxWidth * .058,
                      color: AppColors.blue,
                    ),
                    Container(
                      height: constraints.maxHeight * .256,
                      width: constraints.maxWidth * .058,
                      color: AppColors.darkBlue,
                    ),
                  ],
                ),
              ],
            ),
            // handrail right
            Container(
              height: constraints.maxHeight * 1,
              width: constraints.maxWidth * .11,
              color: AppColors.blue,
            ),
          ],
        );
      }),
    );
  }
}
