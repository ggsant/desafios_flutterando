import 'package:flutter/material.dart';

class ConstsApp {
  static const String whitePokeball = 'assets/images/pokeball.png';
  static const String blackPokeball = 'assets/images/pokeball_dark.png';

  static Color getColorType({String type}) {
    switch (type) {
      case 'Normal':
        return Colors.purple[200];
        break;
      case 'Fire':
        return Colors.red[700];
        break;
      case 'Water':
        return Colors.blue[400];
        break;
      case 'Grass':
        return Colors.green[200];
        break;
      case 'Electric':
        return Colors.amber[400];
        break;
      case 'Ice':
        return Colors.cyan[400];
        break;
      case 'Fighting':
        return Colors.orangeAccent;
        break;
      case 'Poison':
        return Colors.purple[600];
        break;
      case 'Ground':
        return Colors.orange[600];
        break;
      case 'Flying':
        return Colors.blue[100];
        break;
      case 'Psychic':
        return Colors.pink[200];
        break;
      case 'Bug':
        return Colors.lightGreen[300];
        break;
      case 'Rock':
        return Colors.black38;
        break;
      case 'Ghost':
        return Colors.blue[400];
        break;
      case 'Dark':
        return Colors.pinkAccent[600];
        break;
      case 'Dragon':
        return Colors.blue[800];
        break;
      case 'Steel':
        return Colors.blueGrey;
        break;
      case 'Fairy':
        return Colors.pinkAccent[700];
        break;
      default:
        return Colors.black;
        break;
    }
  }
}
