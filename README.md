# Bet ID

A tiny, secure, unique identifier generator for [Dart](https://dartlang.org/).

* **EASY** - Simple entry design, less necessary APIs are exposed.
* **FAST** - Generate a unique ID in a single line of code.
* **SECURE** - Generates a unique ID that is hard to guess.

```dart
import 'package:betid/betid.dart';

/// Generate a sized of 21 characters unique ID.
final String id = 21.betid;
```

## Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [APIs](#apis)
4. [License](#license)

## Installation

```bash
$ dart pub add betid

# Or if you using Flutter
$ flutter pub add betid
```

## Usage

Use the `betid` function to generate a unique ID.

```dart
final String id = betid();

/// If you want to generate a ID with size of `21` characters.
final String id2 = betid(21);
```

If you want to generate a unique ID with custom alphabet.

```dart
final String customAlphabet = 'abcdefghijklmnopqrstuvwxyz_ABCDEFGHIJKLMNOPQRSTUVWXYZ-1234567890';
final String id = customAlphabet.betid();
```

Can you use the sized ID?

```dart
final String id = 21.betid;
```

## APIs

### Functions
  - `betid`, Parameter: `size`

### Extensions
  - for `String` type, `.betid`
  - for `int` type:
    1. `.betid`
    2. `.customAlphabetBetid(String alphabet)`

## License

  [BSD 3 Clause License](https://spdx.org/licenses/BSD-3-Clause.html),
  Copyright (c) 2022 [Odroe Inc.](https://odroe.com/)