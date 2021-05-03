import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class FlutterandoPlaylistWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const FlutterandoPlaylistWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xFFC4C4C4).withOpacity(.1),
      ),
      child: Column(
        children: [
          Container(
            width: 154,
            height: 84,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFC4C4C4).withOpacity(.1),
            ),
            child: Image.asset('assets/img/$image', width: 87, height: 66),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headline5?.copyWith(color: AppColors.subtitle),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
