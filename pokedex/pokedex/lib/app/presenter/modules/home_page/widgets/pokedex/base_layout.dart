import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColors.redScreen,
      child: Stack(
        children: [
          ClipPath(
            clipper: ClipHomeVertical(),
            child: Container(
              color: ThemeColors.pokeballRedTop,
            ),
          ),
          ClipPath(
            clipper: ClipHomeBottom(),
            child: Container(
              color: ThemeColors.redScreen2,
            ),
          ),
          ClipPath(
            clipper: ClipHomeTop(),
            child: Container(
              color: ThemeColors.pokeballRedTop,
            ),
          ),
        ],
      ),
    );
  }
}

class ClipHomeTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 3.7);
    path.lineTo(size.width / 1.1, size.height / 3.7);
    path.lineTo(size.width / 1.1, size.height / 7);
    path.lineTo(size.width / 2.0, size.height / 7);
    path.lineTo(size.width / 3, size.height / 4.2);
    path.lineTo(0.0, size.height / 4.2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ClipHomeBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 3.5);
    path.lineTo(size.width / 1.1, size.height / 3.5);
    path.lineTo(size.width / 1.1, size.height / 6);
    path.lineTo(size.width / 1.9, size.height / 6);
    path.lineTo(size.width / 2.8, size.height / 3.7);
    path.lineTo(0.0, size.height / 3.7);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class ClipHomeVertical extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 1.1, size.height);
    path.lineTo(size.width / 1.1, 0.0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
