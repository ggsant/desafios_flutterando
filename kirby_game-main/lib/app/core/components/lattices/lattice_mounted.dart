import 'package:flutter/material.dart';

import 'lattice_widget.dart';

class LatticeMounted extends StatelessWidget {
  final int numberOfPieces;
  final Size size;

  const LatticeMounted({
    Key? key,
    this.numberOfPieces = 1,
    this.size = const Size(36, 24),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (var i = 0; i < numberOfPieces; i++) LatticeWidget(size: size),
    ]);
  }
}
