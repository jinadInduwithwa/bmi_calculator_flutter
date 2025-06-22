import 'dart:ui';

import 'package:flutter/widgets.dart';

const kBackgroundColor = Color(0xFF090C20);
const kTileColor = Color(0xFF1D1F33);
const kActiveTextColor = Color.fromARGB(255, 255, 255, 255);
const kSelectedTileColor = Color.fromARGB(255, 42, 29, 51);
const kInactiveTextColor = Color(0xFF8D8E98);
const kButtonColor = Color(0xFFEB1555);

var kTileBorderDecoration = BoxDecoration(
  color: kTileColor,
  borderRadius: BorderRadius.circular(5),
);

var kSelectedTileBorderDecoration = BoxDecoration(
  color: kSelectedTileColor,
  borderRadius: BorderRadius.circular(5),
);
