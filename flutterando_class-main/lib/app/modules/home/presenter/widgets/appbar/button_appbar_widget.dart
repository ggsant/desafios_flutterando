import 'package:flutter/material.dart';

class ButtonAppbarWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color borderColor;
  final Color textColor;

  const ButtonAppbarWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.color = Colors.white,
    this.borderColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 83,
      height: 22,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: textColor, size: 10),
          SizedBox(width: 3.5),
          Text(
            text,
            style: Theme.of(context).textTheme.headline1?.copyWith(color: textColor),
          )
        ],
      ),
    );
  }
}
