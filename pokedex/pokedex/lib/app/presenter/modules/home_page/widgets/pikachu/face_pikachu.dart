import 'package:flutter/material.dart';

import 'eyes_pikachu.dart';
import 'snout_pikachu.dart';

class Face extends StatelessWidget {
  const Face({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 10,
          height: 60,
          child: Eyes(),
        ),
        Positioned(
          left: 15,
          height: 100,
          child: Snout(),
        ),
      ],
    );
  }
}
