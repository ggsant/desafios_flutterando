import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class CustomTitleWidget extends StatelessWidget {
  final String title;
  final ImageProvider? icon;

  const CustomTitleWidget({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 34, top: 50, right: 32),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerLeft,
        children: [
          if (icon != null) Positioned(left: -10, child: Image(image: icon!, height: 26)),
          Row(
            children: [
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Flutterando ",
                        style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white),
                      ),
                      TextSpan(
                        text: title,
                        style: Theme.of(context).textTheme.headline3?.copyWith(color: AppColors.accent),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "ver todos ",
                style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white),
              ),
              Icon(Icons.keyboard_arrow_right_rounded, color: AppColors.accent, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}
