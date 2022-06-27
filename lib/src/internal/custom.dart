import 'dart:typed_data';

import '../interfaces/random.dart';
import 'clz32.dart';
import 'random.dart';

String _customRandom({
  required String alphabet,
  required int size,
  required RandomGenerator randomGenerator,
}) {
  /// Generates a mask that computes the closest integer to the
  /// size of the alphabet.
  final int mask = (2 << (31 - clz32((alphabet.length - 1) | 1))) - 1;

  /// Determine how many random numbers the step produces.
  final int step = 0.618 * mask * size ~/ alphabet.length;

  /// Generate the random numbers.
  final StringBuffer buffer = StringBuffer();
  while (true) {
    final Uint8List random = randomGenerator(step);
    for (int index = step; index > 0; index--) {
      final int randomIndex = random[index - 1] & mask;

      if (randomIndex > 0 && randomIndex < alphabet.length) {
        buffer.write(alphabet[randomIndex]);
      }

      if (buffer.length == size) {
        return buffer.toString();
      }
    }
  }
}

String customAlphabet({
  required String alphabet,
  required int size,
}) =>
    _customRandom(
      alphabet: alphabet,
      size: size,
      randomGenerator: randomGenerator,
    );
