import 'package:flutter/material.dart';

import 'presenter/core/screen/animation_page.dart';

class Pokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex - Desafio Flutterando',
      theme: ThemeData(
        fontFamily: 'Google',
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimationPage(),
    );
  }
}
