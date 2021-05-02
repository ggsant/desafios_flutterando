import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:flutterando_class/app/modules/home/widgets/appbar/appbar.dart';
import 'package:flutterando_class/app/modules/home/widgets/cards/card_continue.dart';

import '../../core/constants/colors.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: controller,
        onState: (_, counter) {
          return Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    toolbarHeight: 300,
                    expandedHeight: 300,
                    collapsedHeight: 300,
                    pinned: false,
                    title: AppBarWidget(),
                  ),
                ];
              },
              body: Column(
                children: <Widget>[
                  // AppBarWidget(),
                  Container(
                      height: 80.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: [
                          CardContinue(
                            image: 'gerencia.jpg',
                            name: 'Jacob Moura',
                            title: 'Gerência de estado',
                          ),
                          SizedBox(width: 20),
                          CardContinue(
                            image: 'akita.jpg',
                            name: 'Akitando',
                            title: 'Fábio Akita',
                          ),
                        ],
                      )),
                ],
              ),
            ),
          );
        },
        onError: (context, error) => Center(
          child: Text(
            'Too many clicks',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
