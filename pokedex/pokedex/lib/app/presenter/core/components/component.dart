import 'package:flutter/material.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class Component {
  topPokeballBackground(Size size) {
    return Container(
      height: size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ThemeColors.pokeballRedTop, ThemeColors.pokeballRedBottom],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  bottomPokeballBackground(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ThemeColors.pokeballWhiteTop,
            ThemeColors.pokeballWhiteBottom
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  borderTopSide() {
    return ClipPath(
      clipper: BorderTopSide(),
      child: Container(
        height: 76,
        color: ThemeColors.black,
      ),
    );
  }

  borderBottomSide() {
    return ClipPath(
      child: ClipPath(
        clipper: BorderBottomSide(),
        child: Container(
          height: 76,
          color: Colors.black,
        ),
      ),
    );
  }

  openButton(Size size) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: ThemeColors.white,
        shape: BoxShape.circle,
        border: Border.all(width: 3),
      ),
      child: Center(
        child: Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
            color: ThemeColors.white,
            shape: BoxShape.circle,
            border: Border.all(width: 3),
          ),
        ),
      ),
    );
  }
}

class BorderTopSide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var addClipCircle = Rect.fromCircle(
      center: Offset(size.width * .5, size.height),
      radius: size.height,
    );

    var rectBorderTopSide = Rect.fromCenter(
      center: Offset(size.width * .5, size.height),
      height: 40,
      width: size.width,
    );

    var path = Path()
      ..addRect(rectBorderTopSide)
      ..addOval(addClipCircle);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class BorderBottomSide extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var addClipCircle = Rect.fromCircle(
      center: Offset(size.width * .5, size.height * 0),
      radius: size.height,
    );
    var subtractClipCircle = Rect.fromCircle(
      center: Offset(size.width * .5, size.height * 0),
      radius: size.height * .68,
    );

    var rectBorderTopSide = Rect.fromCenter(
      center: Offset(size.width * .5, size.height * 0),
      height: 40,
      width: size.width,
    );

    var arcRect = Rect.fromLTRB(
      size.width * .405,
      size.height * .26,
      size.width * .60,
      size.height,
    );

    var path = Path()
          ..addRect(rectBorderTopSide)
          ..addOval(addClipCircle)
          // ..fillType = PathFillType.evenOdd
          ..addOval(subtractClipCircle)
        // ..moveTo(0, 0)
        // ..lineTo(size.width * 0, size.height * .26)
        // ..lineTo(size.width * .3, size.height * .26)
        // ..arcTo(arcRect, 10
        // , 0, false)
        // ..lineTo(size.width, size.height * .26)
        //
        ;

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
