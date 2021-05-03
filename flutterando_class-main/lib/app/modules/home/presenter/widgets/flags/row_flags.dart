import 'package:flutter/material.dart';

class RowFlags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        Column(
          children: [
            Image.asset(
              "assets/img/logo/logo_white.png",
              width: 25,
              height: 25,
            ),
            const SizedBox(height: 10),
            Image.asset(
              "assets/img/icons/flagBr.png",
              filterQuality: FilterQuality.medium,
              width: 25,
              height: 25,
            ),
          ],
        ),
        const SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'A Flutterando é a maior comunidade ',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'de Flutter no Brasil!',
              style: TextStyle(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
