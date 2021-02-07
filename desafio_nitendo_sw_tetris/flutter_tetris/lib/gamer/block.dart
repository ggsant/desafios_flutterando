import 'gamer.dart';
import 'dart:math' as math;

const BLOCK_SHAPES = {
  BlockType.ONE: [
    [1, 1, 1, 1]
  ],
  BlockType.TWO: [
    [0, 0, 1],
    [1, 1, 1],
  ],
  BlockType.THREE: [
    [1, 0, 0],
    [1, 1, 1],
  ],
  BlockType.FOUR: [
    [1, 1, 0],
    [0, 1, 1],
  ],
  BlockType.FIVE: [
    [0, 1, 1],
    [1, 1, 0],
  ],
  BlockType.SIX: [
    [1, 1],
    [1, 1]
  ],
  BlockType.SEVEN: [
    [0, 1, 0],
    [1, 1, 1]
  ]
};

///方块初始化时的位置
const START_XY = {
  BlockType.ONE: [3, 0],
  BlockType.TWO: [4, -1],
  BlockType.THREE: [4, -1],
  BlockType.FOUR: [4, -1],
  BlockType.FIVE: [4, -1],
  BlockType.SIX: [4, -1],
  BlockType.SEVEN: [4, -1],
};

///方块变换时的中心点
const ORIGIN = {
  BlockType.ONE: [
    [1, -1],
    [-1, 1],
  ],
  BlockType.TWO: [
    [0, 0]
  ],
  BlockType.THREE: [
    [0, 0]
  ],
  BlockType.FOUR: [
    [0, 0]
  ],
  BlockType.FIVE: [
    [0, 0]
  ],
  BlockType.SIX: [
    [0, 0]
  ],
  BlockType.SEVEN: [
    [0, 0],
    [0, 1],
    [1, -1],
    [-1, 0]
  ],
};

enum BlockType { ONE, TWO, THREE, FOUR, FIVE, SIX, SEVEN }

class Block {
  final BlockType type;
  final List<List<int>> shape;
  final List<int> xy;
  final int rotateIndex;

  Block(this.type, this.shape, this.xy, this.rotateIndex);

  Block fall({int step = 1}) {
    return Block(type, shape, [xy[0], xy[1] + step], rotateIndex);
  }

  Block right() {
    return Block(type, shape, [xy[0] + 1, xy[1]], rotateIndex);
  }

  Block left() {
    return Block(type, shape, [xy[0] - 1, xy[1]], rotateIndex);
  }

  Block rotate() {
    List<List<int>> result =
        List.filled(shape[0].length, null, growable: false);
    for (int row = 0; row < shape.length; row++) {
      for (int col = 0; col < shape[row].length; col++) {
        if (result[col] == null) {
          result[col] = List.filled(shape.length, 0, growable: false);
        }
        result[col][row] = shape[shape.length - 1 - row][col];
      }
    }
    final nextXy = [
      this.xy[0] + ORIGIN[type][rotateIndex][0],
      this.xy[1] + ORIGIN[type][rotateIndex][1]
    ];
    final nextRotateIndex =
        rotateIndex + 1 >= ORIGIN[this.type].length ? 0 : rotateIndex + 1;

    return Block(type, result, nextXy, nextRotateIndex);
  }

  bool isValidInMatrix(List<List<int>> matrix) {
    if (xy[1] + shape.length > GAME_PAD_MATRIX_H ||
        xy[0] < 0 ||
        xy[0] + shape[0].length > GAME_PAD_MATRIX_W) {
      return false;
    }
    for (var i = 0; i < matrix.length; i++) {
      final line = matrix[i];
      for (var j = 0; j < line.length; j++) {
        if (line[j] == 1 && get(j, i) == 1) {
          return false;
        }
      }
    }
    return true;
  }

  ///return null if do not show at [x][y]
  ///return 1 if show at [x,y]
  int get(int x, int y) {
    x -= xy[0];
    y -= xy[1];
    if (x < 0 || x >= shape[0].length || y < 0 || y >= shape.length) {
      return null;
    }
    return shape[y][x] == 1 ? 1 : null;
  }

  static Block fromType(BlockType type) {
    final shape = BLOCK_SHAPES[type];
    return Block(type, shape, START_XY[type], 0);
  }

  static Block getRandom() {
    final i = math.Random().nextInt(BlockType.values.length);
    return fromType(BlockType.values[i]);
  }
}
