import 'package:flutter/material.dart';

/// Styles - Contains the design system for the entire app.
/// Includes paddings, text styles, timings etc.

abstract class Palette {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color black2 = Color(0xFF1C161C);
  static const Color orange = Color(0xFFFFBD7B);
  static const Color grey = Color(0xFFD4D4D4);
  static const Color biege = Color(0xFFFCF7F4);
}

abstract class Insets {
  static const double s0 = 0;
  static const double s16 = 16;
}

abstract class Sizes {
  //static const double navigationBarSize = 44;
}

class Corner {
  final double value;
  final BorderRadius border;
  final Radius radius;
  const Corner(
      {required this.value, required this.border, required this.radius});
}

abstract class Corners {

  static const Corner r12 = Corner(
      value: 12,
      border: BorderRadius.all(Radius.circular(12)),
      radius: Radius.circular(12));
}

abstract class FontSizes {
  static const double s12 = 12;
  static const double s14 = 14;
  static const double s18 = 18;
  static const double s24 = 24;
  static const double s28 = 28;
  static const double s32 = 32;
}

abstract class Fonts {
  //static const String inter = 'Inter';
}

abstract class TextStyles {

  static const TextStyle playerUsername = TextStyle(
    fontSize: FontSizes.s12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle numpadDigit = TextStyle(
      fontSize: FontSizes.s28,
      fontWeight: FontWeight.w400,
  );

  static const TextStyle headerBig = TextStyle(
    fontSize: FontSizes.s32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle gridDigit = TextStyle(
    fontSize: FontSizes.s24,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle timer = TextStyle(
    fontSize: FontSizes.s24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle direction = TextStyle(
    fontSize: FontSizes.s18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle vs = TextStyle(
    fontSize: FontSizes.s28,
    fontWeight: FontWeight.w500,
  );
}
