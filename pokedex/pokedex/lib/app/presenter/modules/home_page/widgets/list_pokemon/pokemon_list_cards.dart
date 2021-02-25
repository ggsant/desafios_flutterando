import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/app/domain/entities/pokemon.dart';
import 'package:pokedex/app/presenter/controller/pokemon_controller.dart';

import 'pokemon_item.dart';

class PokemonListCards extends StatefulWidget {
  @override
  _PokemonListCardsState createState() => _PokemonListCardsState();
}

class _PokemonListCardsState extends State<PokemonListCards> {
  PokemonApiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = GetIt.instance<PokemonApiController>();
    if (_controller.pokemonApi == null) {
      _controller.fetchPokemonList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 190,
                  child: Observer(
                    name: 'ListaHomePage',
                    builder: (BuildContext context) {
                      final _pokemon = _controller.pokemonApi.pokemon;
                      return (_controller.pokemonApi != null)
                          ? AnimationLimiter(
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                addAutomaticKeepAlives: true,
                                itemCount: _pokemon.length,
                                itemBuilder: (context, index) {
                                  Pokemon pokemon =
                                      _controller.getPokemon(index: index);
                                  return AnimationConfiguration.staggeredGrid(
                                    position: index,
                                    duration: const Duration(milliseconds: 375),
                                    columnCount: 1,
                                    child: ScaleAnimation(
                                      child: PokemonItem(
                                        types: pokemon.type,
                                        index: index,
                                        name: pokemon.name,
                                        num: pokemon.num,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          : Center(
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.red[400],
                              ),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
