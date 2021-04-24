import 'package:flutter/material.dart';

import '../../../core/components/%20ground/ground_mounted.dart';
import '../../../core/components/lattices/lattice_mounted.dart';
import '../../../core/components/plataform/plataform_mounted.dart';
import '../../../core/components/stairs/stair_mounted.dart';

class ScearioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 76,
          bottom: 499,
          child: const LatticeMounted(numberOfPieces: 4),
        ),
        Positioned(
          bottom: 421,
          child: const LatticeMounted(numberOfPieces: 9),
        ),
        Positioned(
          right: 0,
          bottom: 253,
          child: const LatticeMounted(numberOfPieces: 6),
        ),
        Positioned(
          bottom: 85,
          child: const LatticeMounted(numberOfPieces: 9),
        ),
        //--------------------------Stairs-----------------------------
        Positioned(
          left: 50,
          bottom: 445,
          child: const StairMounted(numberOfPieces: 16),
        ),
        Positioned(
          left: 176,
          bottom: 445,
          child: const StairMounted(numberOfPieces: 6),
        ),
        Positioned(
          right: 94,
          bottom: 277,
          child: const StairMounted(numberOfPieces: 16),
        ),
        Positioned(
          left: 177,
          bottom: 109,
          child: const StairMounted(numberOfPieces: 16),
        ),

        Positioned(
          left: 0,
          bottom: 0,
          child: const GroundMounted(),
        ),
        Positioned(
          left: 100,
          bottom: 200,
          child: const PlataformMounted(),
        ),
      ],
    );
  }
}
