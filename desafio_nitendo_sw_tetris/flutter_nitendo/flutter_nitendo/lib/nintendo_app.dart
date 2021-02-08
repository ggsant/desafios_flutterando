import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_nitendo/widgets/banner.dart';
import 'nintendo.dart';
import 'resources/colors.dart';

import 'package:asuka/asuka.dart' as asuka;

class NintendoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.bgScreenBottom,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Nintendo(),
      builder: (context, screen) => asuka.builder(
        context,
        BannerFlutter(screen: screen),
      ),
    );
  }
}
