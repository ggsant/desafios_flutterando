import 'package:flutter/material.dart';
import 'package:flutter_nitendo/resources/colors.dart';

class BigButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            AppColors.bigButtonLayer0Top,
            AppColors.bigButtonLayer0Bottom,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: AppColors.bigButtonLayerBorder),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.bigButtonLayer1Bottom,
              AppColors.bigButtonLayer1Top,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          shape: BoxShape.circle,
        ),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.bigButtonLayer2Top,
                AppColors.bigButtonLayer2Bottom
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            border: Border.all(
              color: AppColors.bigButtonLayerBorder,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class ButtonDirectional extends StatelessWidget {
  final double height;
  final double width;

  const ButtonDirectional({Key key, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .3,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.digitalDirectionTopLayer0Top,
                    AppColors.digitalDirectionTopLayer0Bottom,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionTopLayer1Top,
                        AppColors.digitalDirectionTopLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_drop_up_outlined,
                      color: AppColors.digitalDirectionTopLayer2Bottom,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.digitalDirectionLeftLayer0Top,
                    AppColors.digitalDirectionLeftLayer0Bottom,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionLeftLayer1Top,
                        AppColors.digitalDirectionLeftLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_left,
                      color: AppColors.digitalDirectionLeftLayer2Bottom,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.digitalDirectionRightLayer0Top,
                      AppColors.digitalDirectionRightLayer0Bottom,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionRightLayer1Top,
                        AppColors.digitalDirectionRightLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_right,
                      color: AppColors.digitalDirectionRightLayer2Bottom,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.digitalDirectionBottomLayer0Top,
                    AppColors.digitalDirectionBottomLayer0Bottom,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionBottomLayer1Top,
                        AppColors.digitalDirectionBottomLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.digitalDirectionBottomLayer2Bottom,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          AppColors.soundLayer0Top,
          AppColors.soundLayer0Bottom,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              AppColors.soundLayer0Bottom,
              AppColors.soundLayer0Top,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Icon(Icons.home),
      ),
    );
  }
}

class LetterButton extends StatelessWidget {
  final double height;
  final double width;

  const LetterButton({Key key, this.height, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .3,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.digitalDirectionTopLayer0Top,
                    AppColors.digitalDirectionTopLayer0Bottom,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionTopLayer1Top,
                        AppColors.digitalDirectionTopLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'X',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.digitalDirectionLeftLayer0Top,
                    AppColors.digitalDirectionLeftLayer0Bottom,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionLeftLayer1Top,
                        AppColors.digitalDirectionLeftLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'B',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.digitalDirectionRightLayer0Top,
                      AppColors.digitalDirectionRightLayer0Bottom,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionRightLayer1Top,
                        AppColors.digitalDirectionRightLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'Y',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    AppColors.digitalDirectionBottomLayer0Top,
                    AppColors.digitalDirectionBottomLayer0Bottom,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.digitalDirectionBottomLayer1Top,
                        AppColors.digitalDirectionBottomLayer1Bottom,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      'A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SelectButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 10,
      width: 30,
      decoration: BoxDecoration(
        color: AppColors.minusButtomTop,
        borderRadius: BorderRadius.circular(2),
        gradient: LinearGradient(
            colors: [AppColors.soundLayer0Top, AppColors.soundLayer0Bottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Container(
        height: 5,
        width: 25,
        decoration: BoxDecoration(
            color: AppColors.minusButtomTop,
            gradient: LinearGradient(colors: [
              AppColors.soundLayer1Top,
              AppColors.soundLayer1Bottom
            ])),
      ),
    );
  }
}

class SoundButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColors.soundLayer0Top,
          AppColors.soundLayer0Bottom,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.soundLayer0Bottom,
              AppColors.soundLayer0Top,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.soundLayer2),
        ),
      ),
    );
  }
}
