import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class CardContinue extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const CardContinue({Key? key, required this.image, required this.title, required this.subtitle}) : super(key: key);

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
          SizedBox(width: 8),
          Image.asset('assets/img/$image', width: 87, height: 66, filterQuality: FilterQuality.low),
          SizedBox(width: 10),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white, fontSize: 10),
                  ),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.headline4?.copyWith(color: AppColors.bgProgressbar, fontSize: 10),
                  ),
                ],
              ),
              SizedBox(width: 40),
              Image.asset(
                "assets/img/logo/logo_white.png",
                width: 25,
                height: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
