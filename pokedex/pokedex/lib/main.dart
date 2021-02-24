import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/app/presenter/controller/pokemon_controller.dart';

import 'app/pokedex.dart';
import 'app/presenter/core/colors/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: ThemeColors.redScreen,
    statusBarColor: ThemeColors.pokeballRedTop,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  ));
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<PokemonApiController>(PokemonApiController());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  return runApp(Pokedex());
}
