import 'package:betid/betid.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Test default betid size', () {
    expect(betid().length, equals(64));
  });

  test('Test sized beyid', () {
    const int size = 21;

    expect(size.betid.length, equals(size));
  });

  test('Test custom alphabet of sized', () {
    const String customAlphabet = 'abcdefghijklmnopqrstuvwxyz';
    const int size = 21;

    expect(size.customAlphabetBetid(customAlphabet).length, equals(size));
  });

  test('Test betid with custom alphabet', () {
    const String customAlphabet = 'abcdefghijklmnopqrstuvwxyz';
    final String id = customAlphabet.betid();

    for (final char in id.split('')) {
      expect(id.contains(char), isTrue);
    }
  });
}
