import 'package:flutter/material.dart';

import 'presenter/modules/pokedex_page.dart';

class Pokedex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex - Desafio Flutterando',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Google',
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PokedexPage(),
    );
  }
}
