import 'package:flutter/material.dart';
import 'package:tetris/screens/control/direction_control.dart';
import 'package:tetris/screens/control/system_button_group.dart';

import '../home_page.dart';
import '../main_screen.dart';
import 'screen_decorations.dart';

class PageLand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    height -= MediaQuery.of(context).viewInsets.vertical;
    return SizedBox.expand(
      child: Container(
        color: BACKGROUND_COLOR,
        child: Padding(
          padding: MediaQuery.of(context).padding,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    SystemButtonGroup(),
                    Spacer(),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 40, bottom: 40),
                    //   child: DropButton(),
                    // )
                  ],
                ),
              ),
              ScreenDecoration(child: MainScreen.fromHeight(height * 0.8)),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    DirectionControl(),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
