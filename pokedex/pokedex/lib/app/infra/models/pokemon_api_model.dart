import 'package:pokedex/app/domain/entities/pokemon_api.dart';

import 'pokemon_model.dart';

class PokemonApiModel extends PokemonApi {
  List<PokemonModel> pokemon;

  PokemonApiModel.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null) {
      pokemon = new List<PokemonModel>();
      json['pokemon'].forEach((value) {
        pokemon.add(new PokemonModel.fromJson(value));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon.map((value) => value.toJson()).toList();
    }
    return data;
  }
}
