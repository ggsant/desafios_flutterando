import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tetris/gamer/block.dart';
import 'package:tetris/screens/flutter_tetris.dart';

const GAME_PAD_MATRIX_H = 20;

const GAME_PAD_MATRIX_W = 10;

enum GameStates {
  none,
  paused,
  running,
  reset,
  mixing,
  clear,
  drop,
}

class Game extends StatefulWidget {
  final Widget child;

  const Game({Key key, @required this.child})
      : assert(child != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return GameControl();
  }

  static GameControl of(BuildContext context) {
    final state = context.ancestorStateOfType(TypeMatcher<GameControl>());
    assert(state != null, "must wrap this context with [Game]");
    return state;
  }
}

///duration for show a line when reset
const _REST_LINE_DURATION = const Duration(milliseconds: 50);

const _LEVEL_MAX = 6;

const _LEVEL_MIN = 1;

const _SPEED = [
  const Duration(milliseconds: 800),
  const Duration(milliseconds: 650),
  const Duration(milliseconds: 500),
  const Duration(milliseconds: 370),
  const Duration(milliseconds: 250),
  const Duration(milliseconds: 160),
];

class GameControl extends State<Game> with RouteAware {
  GameControl() {
    for (int i = 0; i < GAME_PAD_MATRIX_H; i++) {
      _data.add(List.filled(GAME_PAD_MATRIX_W, 0));
      _mask.add(List.filled(GAME_PAD_MATRIX_W, 0));
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPushNext() {
    pause();
  }

  final List<List<int>> _data = [];

  final List<List<int>> _mask = [];

  int _level = 1;

  int _points = 0;

  int _cleared = 0;

  Block _current;

  Block _next = Block.getRandom();

  GameStates _states = GameStates.none;

  Block _getNext() {
    final next = _next;
    _next = Block.getRandom();
    return next;
  }

  void rotate() {
    if (_states == GameStates.running && _current != null) {
      final next = _current.rotate();
      if (next.isValidInMatrix(_data)) {
        _current = next;
      }
    }
    setState(() {});
  }

  void right() {
    if (_states == GameStates.none && _level < _LEVEL_MAX) {
      _level++;
    } else if (_states == GameStates.running && _current != null) {
      final next = _current.right();
      if (next.isValidInMatrix(_data)) {
        _current = next;
      }
    }
    setState(() {});
  }

  void left() {
    if (_states == GameStates.none && _level > _LEVEL_MIN) {
      _level--;
    } else if (_states == GameStates.running && _current != null) {
      final next = _current.left();
      if (next.isValidInMatrix(_data)) {
        _current = next;
      }
    }
    setState(() {});
  }

  void drop() async {
    if (_states == GameStates.running && _current != null) {
      for (int i = 0; i < GAME_PAD_MATRIX_H; i++) {
        final fall = _current.fall(step: i + 1);
        if (!fall.isValidInMatrix(_data)) {
          _current = _current.fall(step: i);
          _states = GameStates.drop;
          setState(() {});
          await Future.delayed(const Duration(milliseconds: 100));
          break;
        }
      }
      setState(() {});
    } else if (_states == GameStates.paused || _states == GameStates.none) {
      _startGame();
    }
  }

  void down({bool enableSounds = true}) {
    if (_states == GameStates.running && _current != null) {
      final next = _current.fall();
      if (next.isValidInMatrix(_data)) {
        _current = next;
      } else {
        _mixCurrentIntoData();
      }
    }
  }

  Timer _autoFallTimer;

  Future<void> _mixCurrentIntoData({void mixSound()}) async {
    if (_current == null) {
      return;
    }
    _autoFall(false);

    _forTable((i, j) => _data[i][j] = _current.get(j, i) ?? _data[i][j]);

    final clearLines = [];
    for (int i = 0; i < GAME_PAD_MATRIX_H; i++) {
      if (_data[i].every((d) => d == 1)) {
        clearLines.add(i);
      }
    }

    if (clearLines.isNotEmpty) {
      setState(() => _states = GameStates.clear);

      for (int count = 0; count < 5; count++) {
        clearLines.forEach((line) {
          _mask[line].fillRange(0, GAME_PAD_MATRIX_W, count % 2 == 0 ? -1 : 1);
        });
        setState(() {});
        await Future.delayed(Duration(milliseconds: 100));
      }
      clearLines
          .forEach((line) => _mask[line].fillRange(0, GAME_PAD_MATRIX_W, 0));

      clearLines.forEach((line) {
        _data.setRange(1, line + 1, _data);
        _data[0] = List.filled(GAME_PAD_MATRIX_W, 0);
      });
      debugPrint("clear lines : $clearLines");

      _cleared += clearLines.length;
      _points += clearLines.length * _level * 5;

      int level = (_cleared ~/ 50) + _LEVEL_MIN;
      _level = level <= _LEVEL_MAX && level > _level ? level : _level;
    } else {
      _states = GameStates.mixing;
      if (mixSound != null) mixSound();
      _forTable((i, j) => _mask[i][j] = _current.get(j, i) ?? _mask[i][j]);
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 200));
      _forTable((i, j) => _mask[i][j] = 0);
      setState(() {});
    }

    _current = null;

    if (_data[0].contains(1)) {
      reset();
      return;
    } else {
      _startGame();
    }
  }

  static void _forTable(dynamic function(int row, int column)) {
    for (int i = 0; i < GAME_PAD_MATRIX_H; i++) {
      for (int j = 0; j < GAME_PAD_MATRIX_W; j++) {
        final b = function(i, j);
        if (b is bool && b) {
          break;
        }
      }
    }
  }

  void _autoFall(bool enable) {
    if (!enable && _autoFallTimer != null) {
      _autoFallTimer.cancel();
      _autoFallTimer = null;
    } else if (enable) {
      _autoFallTimer?.cancel();
      _current = _current ?? _getNext();
      _autoFallTimer = Timer.periodic(_SPEED[_level - 1], (t) {
        down(enableSounds: false);
      });
    }
  }

  void pause() {
    if (_states == GameStates.running) {
      _states = GameStates.paused;
    }
    setState(() {});
  }

  void pauseOrResume() {
    if (_states == GameStates.running) {
      pause();
    } else if (_states == GameStates.paused || _states == GameStates.none) {
      _startGame();
    }
  }

  void reset() {
    if (_states == GameStates.none) {
      _startGame();
      return;
    }
    if (_states == GameStates.reset) {
      return;
    }
    _states = GameStates.reset;
    () async {
      int line = GAME_PAD_MATRIX_H;
      await Future.doWhile(() async {
        line--;
        for (int i = 0; i < GAME_PAD_MATRIX_W; i++) {
          _data[line][i] = 1;
        }
        setState(() {});
        await Future.delayed(_REST_LINE_DURATION);
        return line != 0;
      });
      _current = null;
      _getNext();
      _points = 0;
      _cleared = 0;
      await Future.doWhile(() async {
        for (int i = 0; i < GAME_PAD_MATRIX_W; i++) {
          _data[line][i] = 0;
        }
        setState(() {});
        line++;
        await Future.delayed(_REST_LINE_DURATION);
        return line != GAME_PAD_MATRIX_H;
      });
      setState(() {
        _states = GameStates.none;
      });
    }();
  }

  void _startGame() {
    if (_states == GameStates.running && _autoFallTimer?.isActive == false) {
      return;
    }
    _states = GameStates.running;
    _autoFall(true);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<List<int>> mixed = [];
    for (var i = 0; i < GAME_PAD_MATRIX_H; i++) {
      mixed.add(List.filled(GAME_PAD_MATRIX_W, 0));
      for (var j = 0; j < GAME_PAD_MATRIX_W; j++) {
        int value = _current?.get(j, i) ?? _data[i][j];
        if (_mask[i][j] == -1) {
          value = 0;
        } else if (_mask[i][j] == 1) {
          value = 2;
        }
        mixed[i][j] = value;
      }
    }
    debugPrint("game states : $_states");
    return GameState(mixed, _states, _level, _points, _cleared, _next,
        child: widget.child);
  }
}

class GameState extends InheritedWidget {
  GameState(
      this.data, this.states, this.level, this.points, this.cleared, this.next,
      {Key key, this.child})
      : super(key: key, child: child);

  final Widget child;

  final List<List<int>> data;

  final GameStates states;

  final int level;

  final int points;

  final int cleared;

  final Block next;

  static GameState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(GameState) as GameState);
  }

  @override
  bool updateShouldNotify(GameState oldWidget) {
    return true;
  }
}
