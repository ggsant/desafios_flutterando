import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: FractionalOffset(0, 0),
                end: FractionalOffset(0, 2),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/ftJacob.png'),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 200,
            child: Text(
              'oeioeioeieoie',
              style: TextStyle(fontSize: 20, color: AppColors.accent),
            ),
          ),
        ],
      ),
    );
  }
}
