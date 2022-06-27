import 'dart:math' as math;
import 'dart:typed_data';

import '../interfaces/random.dart';

class _Random$Impl {
  static const int poolMaxMultiplier = 128;
  static const int randomNextIntMax = 255;
  static final math.Random random = math.Random.secure();

  Uint8List? _pool;
  int _poolOffset = 0;

  void _randomFill(Uint8List data) {
    for (int index = 0; index < data.length; index++) {
      data[index] = random.nextInt(randomNextIntMax);
    }
  }

  void _fillPool(int length) {
    if (_pool == null || _pool!.length < length) {
      _pool = Uint8List(length * poolMaxMultiplier);
      _randomFill(_pool!);
      _poolOffset = 0;
    } else if (_poolOffset + length > _pool!.length) {
      _randomFill(_pool!);
      _poolOffset = 0;
    }

    _poolOffset += length;
  }

  Uint8List call(int length) {
    _fillPool(length);

    return _pool!.sublist(_poolOffset - length, _poolOffset);
  }
}

final RandomGenerator randomGenerator = _Random$Impl();
