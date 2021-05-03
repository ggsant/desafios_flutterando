import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 50),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3?.copyWith(color: AppColors.subtitle),
      ),
    );
  }
}
