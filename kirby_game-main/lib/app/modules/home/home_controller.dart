import 'dart:async';

import 'package:flutter_triple/flutter_triple.dart';
import '../../core/helpers/enums/directions.dart';

// ignore: must_be_immutable
class HomeController extends NotifierStore<Exception, int> {
  HomeController() : super(0) {
    initialHeight = marioDy;
    direction = Move.right;
    variant = false;
    isTop = false;
    isOver = false;
  }

  //--------------------------Variables-----------------------
  double marioDx = -1;
  double marioDy = 0.662;
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
    if (marioDx >= -0.99) {
      //change state here
      marioDx -= 0.02;
      variant = !variant;
    }
  }

  void moveRight() async {
    direction = Move.right;
    if (marioDx <= 1) {
      //change state here
      marioDx += 0.02;
      variant = !variant;
      // print('Right: ${marioDx.toStringAsFixed(3)}');
    }
  }

  void moveUp() async {
    //First floor
    final upperStair01 = (marioDx > -0.039 &&
        marioDx < 0.08 &&
        marioDy <= 0.19 &&
        marioDy > 0.18);
    final isLast01 =
        marioDx > -0.039 && marioDx < 0.08 && marioDy <= 0.22 && marioDy > 0.19;
    final limitsFirstStair01 =
        marioDx > -0.039 && marioDx < 0.08 && marioDy > 0.22;
    //Second floor
    final upperStair02 =
        marioDx > 0.4 && marioDx < 0.5 && marioDy <= -0.29 && marioDy < -0.33;
    final isLast02 = marioDx > 0.4 && marioDx < 0.5 && marioDy < -0.3;
    final limitsFirstStair02 =
        marioDx > 0.4 && marioDx < 0.5 && marioDy > -0.306;
    //Third floor
    // final upperStair03 = ;
    // final isLast03 =;
    // final limitsFirstStair03 =;
    //Fourth floor
    // final upperStair04 = ;
    // final isLast04 =;
    // final limitsFirstStair04 =;

    //For all floors
    isUpperLimits = upperStair01 || upperStair02;
    isLast = isLast01 || isLast02;
    limitsFirstStair = limitsFirstStair01 || limitsFirstStair02;
    // verifica se pode subir (margem escada e dentro dos limits)
    if (isUpperLimits) {
      isOver = true;
      isTop = false;
      isFirst01 = true;
      marioDy -= 0.046;
      print('UpUpper: ${marioDy.toStringAsFixed(3)}');
    } else if (isLast) {
      isOver = false;
      marioDy -= 0.013;
      isTop = true;
      print('UpIsLast: ${marioDy.toStringAsFixed(3)}');
    } else if (limitsFirstStair) {
      isOver = false;
      direction = Move.up;
      if (marioDy >= -0.99) {
        if (isFirst01) {
          marioDy -= 0.014;
          isFirst01 = false; //check if is the first degree
        } else {
          marioDy -= 0.028;
        }
        variant = !variant;
      }
      print('Up: ${marioDy.toStringAsFixed(3)}');
    }
  }

  void moveDown() async {
    isUpperLimits =
        marioDx > -0.039 && marioDx < 0.08 && marioDy <= 0.19 && marioDy > 0.18;
    isLast =
        marioDx > -0.039 && marioDx < 0.08 && marioDy <= 0.22 && marioDy > 0.19;
    limitsFirstStair = marioDx > -0.039 && marioDx < 0.08 && marioDy > 0.6;
    direction = Move.down;

    // verifica se pode subir (margem escada e dentro dos limits)
    if (isUpperLimits) {
    } else if (isLast) {
    } else if (limitsFirstStair) {
      if (isFirst01) {
        //change state here
        // marioDy += 0.025;
        print(marioDy);
        isOver = true;
      }
    }
  }

  void preJump() async {
    time = 0;
    initialHeight = marioDy;
  }

  void jump() async {
    preJump();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 5 * time;

      //change state here
      marioDy = initialHeight - height;
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
