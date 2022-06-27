import 'functions.dart' as functions;
import 'internal/constants.dart';
import 'internal/custom.dart';

extension CustomAlphabetForBetid on String {
  String betid([int size = defaultBetIDSize]) => customAlphabet(
        alphabet: this,
        size: size,
      );
}

extension SizedBetid on int {
  String get betid => functions.betid(this);

  String customAlphabetBetid(String alphabet) => alphabet.betid(this);
}
