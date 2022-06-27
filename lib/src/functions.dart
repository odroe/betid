import 'internal/constants.dart';
import 'internal/custom.dart';

String betid([int size = defaultBetIDSize]) => customAlphabet(
      alphabet: defaultBetIDAlphabet,
      size: size,
    );
