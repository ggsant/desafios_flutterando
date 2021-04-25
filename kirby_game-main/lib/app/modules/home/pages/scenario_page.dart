import 'package:flutter/material.dart';
import 'package:kirby/app/core/components/characters/rock/rock.dart';
import 'package:kirby/app/core/components/ground/ground_mounted.dart';
import '../../../core/components/plataform/plataform_mounted.dart';

class ScearioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 100,
          bottom: 200,
          child: const PlataformMounted(
            numberOfPieces: 5,
          ),
        ),
        Positioned(
          left: 220,
          bottom: 300,
          child: const PlataformMounted(
            numberOfPieces: 5,
          ),
        ),
        Positioned(
          left: 40,
          bottom: 360,
          child: const PlataformMounted(
            numberOfPieces: 5,
          ),
        ),
        Positioned(
          left: 220,
          bottom: 450,
          child: const PlataformMounted(
            numberOfPieces: 5,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 500,
          child: const PlataformMounted(
            numberOfPieces: 8,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: GroundMounted(
            numberOfPieces: 11,
          ),
        ),
        Positioned(
          right: 80,
          bottom: 75,
          child: Rock(),
        )
      ],
    );
  }
}
