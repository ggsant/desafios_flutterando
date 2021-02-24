import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/modules/home_page/widgets/pikachu/ears_pikachu.dart';

import 'face_pikachu.dart';

class Pikachu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 120,
              child: Container(
                width: 84,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.elliptical(84, 66)),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Face(),
              ),
            ),
            Positioned(
              top: 120,
              left: 130,
              child: Ears(),
            ),
          ],
        ),
      ),
    );
  }
}
