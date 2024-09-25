import 'package:flutter/material.dart';

class AppColors {
  static const Color peru = Color(0xFFC67C4E);
  static const Color black = Color(0xFF130F26);
  static const Color darkSalateGray = Color(0xFF2F4B4E);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightgray1 = Color(0xFFA9A9A9);
  static const Color lightgray2 = Color(0xFF9B9B9B);
  static const Color lightgray3 = Color(0xFF8D8D8D);
  static const Color dividergray = Color(0xFFEAEAEA);
  static const Color dividerlight = Color(0xFFF4F4F4);
  static const Color perulight = Color(0xFFFFF5EE);
  static const Color bordergray = Color(0xFFDEDEDE);
  static const Color borderlight = Color(0xFFEAEAEA);
  static const Color gray = Color(0xFF8D8D8D);
  static const Color gray1 = Color(0xFF808080);
  static const Color darkGray = Color(0xFF2F2D2C);
  static const Color tomato = Color(0xFFED5151);
  static const Color gold = Color(0xFFFBBE21);
  static const Color darkgrad1 = Color(0xFF131313);
  static const Color darkgrad2 = Color(0xFF313131);
  static const Color darkgrad11 = Color(0xFF000000);
  static const Color darkgrad22 = Color(0x00000000);
  static const Color editbutton = Color(0xFF303336);
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
