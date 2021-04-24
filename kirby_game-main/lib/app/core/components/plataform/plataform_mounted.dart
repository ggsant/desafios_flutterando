import 'package:flutter/material.dart';
import 'package:kirby/app/core/components/plataform/plataform_left_widget.dart';
import 'package:kirby/app/core/components/plataform/plataform_middle_widget.dart';

class PlataformMounted extends StatelessWidget {
  final int numberOfPieces;
  final Size size;

  const PlataformMounted({
    Key? key,
    this.numberOfPieces = 1,
    this.size = const Size(8, 32),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PlataformLeftWidget(size: size),
        for (var i = 0; i < numberOfPieces; i++)
          Row(
            children: [
              PlataformMiddleWidget(size: size),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(3.14159),
                child: PlataformMiddleWidget(size: size),
              ),
            ],
          ),
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(3.14159),
          child: PlataformLeftWidget(size: size),
        ),
      ],
    );
  }
}
