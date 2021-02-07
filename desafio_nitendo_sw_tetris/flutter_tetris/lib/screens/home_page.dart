import 'package:flutter/material.dart';
import 'package:tetris/screens/pages/page_land.dart';
import 'package:tetris/screens/pages/page_portrait.dart';

import 'pages/page_portrait.dart';

const SCREEN_BORDER_WIDTH = 3.0;

const BACKGROUND_COLOR = Colors.white;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool land = MediaQuery.of(context).orientation == Orientation.landscape;
    return land ? PageLand() : PagePortrait();
  }
}
