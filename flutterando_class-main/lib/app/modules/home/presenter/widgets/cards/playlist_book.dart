import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class PlaylistBookWidget extends StatelessWidget {
  final ImageProvider image;
  final String title;
  final String subtitle;

  const PlaylistBookWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 118,
      child: Column(
        children: [
          Image(image: image, width: 118, height: 173, fit: BoxFit.cover),
          SizedBox(height: 13),
          Text(
            title,
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headline5?.copyWith(color: AppColors.subtitle),
          ),
        ],
      ),
    );
  }
}
