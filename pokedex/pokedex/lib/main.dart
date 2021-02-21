import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/app/presenter/controller/pokemon_controller.dart';

import 'app/pokedex.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<PokemonApiController>(PokemonApiController());

  return runApp(Pokedex());
}
