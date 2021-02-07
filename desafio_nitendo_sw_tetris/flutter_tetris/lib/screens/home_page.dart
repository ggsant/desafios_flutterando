import 'package:flutter/material.dart';
import 'package:tetris/panel/page_portrait.dart';

const SCREEN_BORDER_WIDTH = 3.0;

const BACKGROUND_COLOR = Colors.white;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool land = MediaQuery.of(context).orientation == Orientation.landscape;
    return land ? PageLand() : PagePortrait();
  }
}
