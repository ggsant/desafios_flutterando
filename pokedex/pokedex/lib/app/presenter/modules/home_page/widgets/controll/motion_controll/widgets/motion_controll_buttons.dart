import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pokedex/app/presenter/core/colors/colors.dart';

class MotionControlButton extends StatelessWidget {
  final IconData icon;
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;

  const MotionControlButton(
      {Key key, @required this.icon, this.colors, this.begin, this.end})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 33,
      child: icon != null ? Icon(icon, size: 20) : null,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}

class MotionControlButtonEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 33,
      color: Colors.transparent,
    );
  }
}

class MotionControllButtonUp extends StatelessWidget {
  const MotionControllButtonUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MotionControlButton(
      icon: FontAwesomeIcons.caretUp,
      colors: [
        ThemeColors.actionButtonUpTop,
        ThemeColors.actionButtonUpBottom,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}

class MotionControllButtonDown extends StatelessWidget {
  const MotionControllButtonDown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MotionControlButton(
      icon: FontAwesomeIcons.caretDown,
      colors: [
        ThemeColors.actionButtonBottomTop,
        ThemeColors.actionButtonBottomBottom,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}

class MotionControllButtonRight extends StatelessWidget {
  const MotionControllButtonRight({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MotionControlButton(
        icon: FontAwesomeIcons.caretRight,
        colors: [
          ThemeColors.actionButtonRightTop,
          ThemeColors.actionButtonRightBottom,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight);
  }
}

class MotionControllButtonCircle extends StatelessWidget {
  const MotionControllButtonCircle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MotionControlButton(
      icon: Icons.circle,
      colors: [
        ThemeColors.actionButtonCircleTop,
        ThemeColors.actionButtonCircleBottom
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}

class MotionControllButtonLeft extends StatelessWidget {
  const MotionControllButtonLeft({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MotionControlButton(
      icon: FontAwesomeIcons.caretLeft,
      colors: [
        ThemeColors.actionButtonLeftTop,
        ThemeColors.actionButtonLeftBottom,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}
