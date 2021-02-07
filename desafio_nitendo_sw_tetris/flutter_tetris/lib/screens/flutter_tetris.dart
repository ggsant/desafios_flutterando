import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetris/resource/colors.dart';

import 'game_play/gamer.dart';
import 'game_play/keyboard.dart';
import 'home_page.dart';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

class FlutterTetris extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.screen,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.screen,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      navigatorObservers: [routeObserver],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Game(child: KeyboardController(child: HomePage())),
      ),
    );
  }
}
