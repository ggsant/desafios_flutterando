import 'dart:async';

import 'package:flutter_triple/flutter_triple.dart';
import '../../core/helpers/enums/directions.dart';

// ignore: must_be_immutable
class HomeController extends NotifierStore<Exception, int> {
  HomeController() : super(0) {
    initialHeight = kirbyDy;
    direction = Move.right;
    variant = false;
    isTop = false;
    isOver = false;
  }

  //--------------------------Variables-----------------------
  double kirbyDx = -1;
  double kirbyDy = 0.750;
  double time = 0;
  double height = 0;
  late double initialHeight;
  late Move direction;
  late bool variant;
  late bool isTop;
  late bool isOver;
  bool isUpperLimits = false;
  bool isLast = false;
  bool limitsFirstStair = false;

  bool isFirst01 = true;
  bool isFirst02 = true;
  bool isFirst03 = true;
  bool isFirst04 = true;

  bool isOnStair01 = false;

  //--------------------------Moves---------------------------
  //

  void moveLeft() async {
    direction = Move.left;
    if (kirbyDx >= -0.99) {
      //change state here
      kirbyDx -= 0.02;
      variant = !variant;
      print(kirbyDx);
    }
  }

  void moveRight() async {
    direction = Move.right;
    if (kirbyDx <= 1) {
      //change state here
      kirbyDx += 0.02;
      variant = !variant;
      print(kirbyDx);
    }
  }

  void preJump() async {
    time = 0;
    initialHeight = kirbyDy;
  }

  void jump() async {
    preJump();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.05;
      height = 4.9 * time + 5;

      //change state here
      kirbyDy = initialHeight + height;
    });
  }

  Future<void> increment() async {
    setLoading(true);

    await Future.delayed(Duration(seconds: 1));

    var value = state + 1;
    if (value < 5) {
      update(value);
    } else {
      setError(Exception('Error: state not can be > 4'));
    }

    setLoading(false);
  }
}
