import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:flutterando_class/app/core/constants/colors.dart';
import 'package:flutterando_class/app/modules/home/presenter/widgets/cards/card_continue.dart';
import 'package:flutterando_class/app/modules/home/presenter/widgets/titles/title.dart';
import 'package:flutterando_class/app/modules/home/presenter/widgets/cards/knowledge_trails.dart';
import 'home_store.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/cards/playlist_book.dart';
import 'widgets/flags/row_flags.dart';
import 'widgets/cards/image.dart';
import 'widgets/cards/flutterando_playlist.dart';
import 'widgets/titles/custom_title.dart';

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
      backgroundColor: AppColors.backGradient,
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: controller,
        onState: (_, counter) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarWidget(),
                RowFlags(),
                TitleWidget(title: "Continue de onde parou"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: [
                      const CardContinue(
                        image: 'gerencia.jpg',
                        title: 'Gerência \nde Estado',
                        subtitle: 'Jacob Moura',
                      ),
                      const SizedBox(width: 5),
                      const CardContinue(
                        image: 'akita.jpg',
                        title: 'Fábio Akita',
                        subtitle: 'akitando',
                      ),
                    ],
                  ),
                ),
                const CustomTitleWidget(title: "vídeos"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    children: [
                      const CustomImage(
                        image: 'hasura.jpg',
                      ),
                      const SizedBox(width: 12),
                      const CustomImage(
                        image: 'engage.jpg',
                      ),
                      const SizedBox(width: 12),
                      const CustomImage(
                        image: 'latam.jpg',
                      ),
                    ],
                  ),
                ),
                const CustomTitleWidget(title: "playlists", icon: const AssetImage("assets/img/icons/play.png")),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(42, 14, 42, 0),
                  child: Row(
                    children: [
                      const FlutterandoPlaylistWidget(title: "Arquitetua do flutter modular", subtitle: "02/10/2020", image: 'modular.jpg'),
                      const FlutterandoPlaylistWidget(title: "Navegação com o Flutter Modular", subtitle: "20/10/2020", image: 'rotasmodular.jpg'),
                      const FlutterandoPlaylistWidget(title: "Dasafios Flutterando", subtitle: "11/11/2020", image: 'desafios.jpg'),
                    ],
                  ),
                ),
                CustomTitleWidget(title: "books", icon: AssetImage("assets/img/icons/stop.png")),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(42, 14, 42, 0),
                  child: Row(
                    children: [
                      PlaylistBookWidget(
                        image: AssetImage("assets/img/books/flutter_na_pratica.png"),
                        title: '“Flutter na Prática”',
                        subtitle: "Frank Zammetti - 2020",
                      ),
                      PlaylistBookWidget(
                        image: AssetImage("assets/img/books/dart.png"),
                        title: "“Dart - October 1, 2020”",
                        subtitle: "Reder Glauber Gad Weyers - 2020",
                      ),
                      PlaylistBookWidget(
                        image: AssetImage("assets/img/books/codigo_limpo.png"),
                        title: "“Código Limpo” - Habilidades Práticas...",
                        subtitle: "Robert C. Martin - 2020",
                      ),
                    ],
                  ),
                ),
                TitleWidget(title: "Trilhas de conhecimento"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.fromLTRB(42, 14, 42, 0),
                  child: Row(
                    children: [
                      KnowledgeTrailsWidget(title: "Iniciante"),
                      KnowledgeTrailsWidget(title: "Semana Modular"),
                    ],
                  ),
                ),
              ],
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
    );
  }
}
