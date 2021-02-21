// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokemonApiController on _PokemonApiControllerBase, Store {
  Computed<PokemonApiModel> _$pokemonApiComputed;

  @override
  PokemonApiModel get pokemonApi => (_$pokemonApiComputed ??=
          Computed<PokemonApiModel>(() => super.pokemonApi,
              name: '_PokemonApiControllerBase.pokemonApi'))
      .value;
  Computed<Pokemon> _$pokemonAtualComputed;

  @override
  Pokemon get pokemonAtual =>
      (_$pokemonAtualComputed ??= Computed<Pokemon>(() => super.pokemonAtual,
              name: '_PokemonApiControllerBase.pokemonAtual'))
          .value;

  final _$_pokemonAPIAtom = Atom(name: '_PokemonApiControllerBase._pokemonAPI');

  @override
  PokemonApiModel get _pokemonAPI {
    _$_pokemonAPIAtom.reportRead();
    return super._pokemonAPI;
  }

  @override
  set _pokemonAPI(PokemonApiModel value) {
    _$_pokemonAPIAtom.reportWrite(value, super._pokemonAPI, () {
      super._pokemonAPI = value;
    });
  }

  final _$_currentPokemonAtom =
      Atom(name: '_PokemonApiControllerBase._currentPokemon');

  @override
  Pokemon get _currentPokemon {
    _$_currentPokemonAtom.reportRead();
    return super._currentPokemon;
  }

  @override
  set _currentPokemon(Pokemon value) {
    _$_currentPokemonAtom.reportWrite(value, super._currentPokemon, () {
      super._currentPokemon = value;
    });
  }

  final _$colorPokemonAtom =
      Atom(name: '_PokemonApiControllerBase.colorPokemon');

  @override
  dynamic get colorPokemon {
    _$colorPokemonAtom.reportRead();
    return super.colorPokemon;
  }

  @override
  set colorPokemon(dynamic value) {
    _$colorPokemonAtom.reportWrite(value, super.colorPokemon, () {
      super.colorPokemon = value;
    });
  }

  final _$currentPositionAtom =
      Atom(name: '_PokemonApiControllerBase.currentPosition');

  @override
  int get currentPosition {
    _$currentPositionAtom.reportRead();
    return super.currentPosition;
  }

  @override
  set currentPosition(int value) {
    _$currentPositionAtom.reportWrite(value, super.currentPosition, () {
      super.currentPosition = value;
    });
  }

  final _$_PokemonApiControllerBaseActionController =
      ActionController(name: '_PokemonApiControllerBase');

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokemonApiControllerBaseActionController
        .startAction(name: '_PokemonApiControllerBase.fetchPokemonList');
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokemonApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPokemonAtual({int index}) {
    final _$actionInfo = _$_PokemonApiControllerBaseActionController
        .startAction(name: '_PokemonApiControllerBase.setPokemonAtual');
    try {
      return super.setPokemonAtual(index: index);
    } finally {
      _$_PokemonApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_PokemonApiControllerBaseActionController
        .startAction(name: '_PokemonApiControllerBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_PokemonApiControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
colorPokemon: ${colorPokemon},
currentPosition: ${currentPosition},
pokemonApi: ${pokemonApi},
pokemonAtual: ${pokemonAtual}
    ''';
  }
}
