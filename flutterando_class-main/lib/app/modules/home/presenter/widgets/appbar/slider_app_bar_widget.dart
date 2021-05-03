import 'package:flutter/material.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';
import 'package:flutterando_class/app/modules/home/presenter/widgets/appbar/button_appbar_widget.dart';

class SliderAppbarWidget extends StatelessWidget {
  final String image;
  final String textOne;
  final String textTwo;
  final String textThree;

  const SliderAppbarWidget({
    Key? key,
    required this.image,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          // "assets/img/ftJacob.png",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.width,
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.transparent, AppColors.backGradient, AppColors.primary],
              ),
            ),
          ),
        ),
        Positioned(
          top: 225,
          left: 40,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(textOne, style: Theme.of(context).textTheme.headline1),
              Text(textTwo, style: Theme.of(context).textTheme.bodyText1),
              Text(textThree, style: Theme.of(context).textTheme.bodyText1),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonAppbarWidget(icon: Icons.play_arrow, text: "Assistir"),
                  SizedBox(width: 10),
                  ButtonAppbarWidget(
                    icon: Icons.add,
                    text: "Detalhes",
                    color: Colors.transparent,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
