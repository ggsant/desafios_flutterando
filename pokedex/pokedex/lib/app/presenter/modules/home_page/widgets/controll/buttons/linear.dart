import 'package:pokedex/app/presenter/core/colors/colors.dart';
import 'package:flutter/material.dart';

class LinearButton extends StatelessWidget {
  final Color color;
  final Color borderColor;

  const LinearButton({Key key, this.color, this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 8,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
    );
  }
}

class LinearButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          LinearButton(
            color: ThemeColors.pokeballRedTop,
            borderColor: ThemeColors.pokeballRedTop,
          ),
          SizedBox(width: 30),
          LinearButton(
            color: ThemeColors.lampOuter,
            borderColor: ThemeColors.lampOuter,
          ),
        ],
      ),
    );
  }
}
