import 'package:pokedex/app/domain/entities/pokemon.dart';

class PokemonModel extends Pokemon {
  int id;
  String num;
  String name;
  String img;
  List<String> type;
  PokemonModel({
    this.id,
    this.num,
    this.name,
    this.img,
    this.type,
  });

  PokemonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.num;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    return data;
  }
}
