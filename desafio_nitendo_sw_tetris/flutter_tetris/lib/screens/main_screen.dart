import 'package:flutter/material.dart';
import 'package:tetris/widgets/briks.dart';
import 'package:tetris/resource/material.dart';

import '../rotate_block.dart';
import 'game_play/gamer.dart';
import 'player_panel.dart';
import 'status_panel.dart';

const Color SCREEN_BACKGROUND = Color(0xff9ead86);

class MainScreen extends StatelessWidget {
  final double width;

  const MainScreen({Key key, @required this.width}) : super(key: key);

  MainScreen.fromHeight(double height)
      : this(width: ((height - 6) / 2 + 6) / 0.6);

  @override
  Widget build(BuildContext context) {
    final playerPanelWidth = width * 0.6;
    return RotateBlock(
      shake: GameState.of(context).states == GameStates.drop,
      child: SizedBox(
        height: (playerPanelWidth - 6) * 2 + 6,
        width: width,
        child: Container(
          color: SCREEN_BACKGROUND,
          child: GameMaterial(
            child: BrikSize(
              size: getBrikSizeForScreenWidth(playerPanelWidth),
              child: Row(
                children: <Widget>[
                  PlayerPanel(width: playerPanelWidth),
                  SizedBox(
                    width: width - playerPanelWidth,
                    child: StatusPanel(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
