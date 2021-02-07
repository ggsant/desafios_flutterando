import 'package:flutter/material.dart';
import 'package:tetris/screens/control/system_button_group.dart';

import 'drop_button.dart';

class LeftController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SystemButtonGroup(),
        Expanded(
          child: Center(
            child: DropButton(),
          ),
        )
      ],
    );
  }
}
