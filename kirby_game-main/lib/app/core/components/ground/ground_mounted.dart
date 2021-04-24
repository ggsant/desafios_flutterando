import 'package:flutter/material.dart';

import ' ground_piece_widget.dart';

class GroundMounted extends StatelessWidget {
  final int numberOfPieces;
  final Size size;

  const GroundMounted({
    Key? key,
    this.numberOfPieces = 1,
    this.size = const Size(35, 78), //35, 78
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (var i = 0; i < numberOfPieces; i++) GroundPieceWidget(size: size),
    ]);
  }
}
