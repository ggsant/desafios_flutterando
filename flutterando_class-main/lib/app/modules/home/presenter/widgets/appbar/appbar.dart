import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'slider_app_bar_widget.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 340,
        autoPlay: true,
        aspectRatio: 10.0,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: [
        const SliderAppbarWidget(
          image: "assets/img/ftJacob.png",
          textOne: 'Jaocb Moura',
          textTwo: 'Um novo modelo de',
          textThree: 'Comunidade',
        ),
        const SliderAppbarWidget(
          image: "assets/img/gabriela.jpg",
          textOne: 'Gabriela',
          textTwo: 'A Flutterando me fez',
          textThree: 'evoluir como dev!',
        )
      ],
    );
  }
}
