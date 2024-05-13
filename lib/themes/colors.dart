import 'package:flutter/material.dart';

class AppColors {
  static const Color black = Color(0xFF12141d);
  static const Color mainGreen = Color(0xFF38F094);
  static const Color coral = Color(0xFFFF715B);
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkGray = Color(0xFF3A3C45);
  static const Color gray2 = Color(0xFF697077);
  static const Color gray3 = Color(0xFF8B929A);
  static const Color lightGray1 = Color(0xFFD4DAE1);
  static const Color lightGray2 = Color(0xFFEFF0F2);
  static const Color lightGray3 = Color(0xFFF7F8F9);
  static const Color green = Color(0xFF12AF6D);
  static const Color red = Color(0xFFFF2200);
  static const Color orange = Color(0xFFF09A1A);
  static const Color whiteBackground = Color(0xFFD7DBDD);
  static const Color blue = Color(0xFF4069D1);
  static const Color violet = Color(0xFF8F2DF0);
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
