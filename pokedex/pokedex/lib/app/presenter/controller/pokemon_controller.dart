import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/app/domain/entities/pokemon.dart';
import 'package:pokedex/app/infra/models/pokemon_api_model.dart';
import 'package:pokedex/app/utils/consts_pokemon_list/consts_api.dart';
import 'package:pokedex/app/utils/consts_pokemon_list/consts_app.dart';
part 'pokemon_controller.g.dart';

class PokemonApiController = _PokemonApiControllerBase
    with _$PokemonApiController;

abstract class _PokemonApiControllerBase with Store {
  @observable
  PokemonApiModel _pokemonAPI;

  @observable
  Pokemon _currentPokemon;

  @observable
  dynamic colorPokemon;

  @observable
  int currentPosition;

  @computed
  PokemonApiModel get pokemonApi => _pokemonAPI;

  @computed
  Pokemon get pokemonAtual => _currentPokemon;

  @action
  fetchPokemonList() {
    _pokemonAPI = null;
    loadPokemonApi().then((pokeList) {
      _pokemonAPI = pokeList;
    });
  }

  Pokemon getPokemon({int index}) {
    return _pokemonAPI.pokemon[index];
  }

  @action
  setPokemonAtual({int index}) {
    _currentPokemon = _pokemonAPI.pokemon[index];
    colorPokemon = ConstsApp.getColorType(type: _currentPokemon.type[0]);
    currentPosition = index;
  }

  @action
  Widget getImage({String numero}) {
    return CachedNetworkImage(
      placeholder: (context, url) => new Container(
        color: Colors.transparent,
      ),
      imageUrl:
          'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$numero.png',
    );
  }

  Future<PokemonApiModel> loadPokemonApi() async {
    try {
      final response = await http.get(ConstsAPI.pokeapiURL);
      var decodeJson = jsonDecode(response.body);
      return PokemonApiModel.fromJson(decodeJson);
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
  }
}
