import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../constants/colors.dart';

class StairMidWidget extends StatelessWidget {
  final Size size;

  const StairMidWidget({Key? key, this.size = const Size(26, 9)})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //handrail left
            Container(
              height: constraints.maxHeight * 1,
              width: constraints.maxWidth * .11,
              color: AppColors.blue,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    //handrail center left
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: AppColors.darkBlue,
                    ),
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: AppColors.blue,
                    ),
                    //handrail center middle
                    Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * .17,
                          width: constraints.maxWidth * .544,
                          color: AppColors.lightBlue,
                        ),
                        Container(
                          height: constraints.maxHeight * .17,
                          width: constraints.maxWidth * .54,
                          color: AppColors.blue,
                        ),
                      ],
                    ),
                    //handrail center right
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: AppColors.blue,
                    ),
                    Container(
                      height: constraints.maxHeight * .34,
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
