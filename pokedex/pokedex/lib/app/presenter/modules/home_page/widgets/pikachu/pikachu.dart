import 'package:flutter/material.dart';

import 'face_pikachu.dart';

class Pikachu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        child: Head(),
      ),
    );
  }
}
