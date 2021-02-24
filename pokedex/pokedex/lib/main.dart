import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/app/presenter/controller/pokemon_controller.dart';
import 'package:pokedex/app/presenter/modules/home_page/widgets/pokedex/base_layout.dart';

import 'app/pokedex.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<PokemonApiController>(PokemonApiController());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  return runApp(Pokedex());
}
