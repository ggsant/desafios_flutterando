import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class VideoCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const VideoCardWidget({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      padding: const EdgeInsets.only(left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.cardBackground,
      ),
      child: Row(
        children: [
          Image.asset('assets/img/$image', width: 87, height: 66, filterQuality: FilterQuality.low),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.bgProgressbar),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
