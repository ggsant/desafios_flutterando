import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kirby/app/core/components/characters/kirby/kirby.dart';

import '../../core/constants/colors.dart';
import 'home_controller.dart';
import 'pages/scenario_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        onKey: (event) async {
          if (event.runtimeType.toString() == 'RawKeyDownEvent') {
            if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
              debugPrint('moveLeft');
              controller.moveLeft();
              setState(() {});
            } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
              debugPrint('moveRight');
              controller.moveRight();
              setState(() {});
            } else if (event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
              debugPrint('jump');
              controller.jump();

              setState(() {});
            }
          }
        },
        autofocus: true,
        child: Container(
          alignment: Alignment.center,
          child: Container(
            width: 375,
            height: 667,
            decoration: BoxDecoration(
              color: AppColors.bgScaffold,
              gradient: AppColors.gradientBg,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ScearioPage(),
                Kirby(
                  direction: controller.direction,
                  isOver: controller.isOver,
                  isTop: controller.isTop,
                  kirbyDx: controller.kirbyDx,
                  kirbyDy: controller.kirbyDy,
                  variant: controller.variant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
