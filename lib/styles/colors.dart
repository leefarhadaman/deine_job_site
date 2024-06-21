import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color darkGray = Color(0xFF2D3748);
  static const Color gray = Color(0xFF4A5568);
  static const Color tealLight = Color(0xFFE6FFFA);
  static const Color blueLight = Color(0xFFEBF4FF);
  static const Color grayLight = Color(0xFF718096);
  static const Color backgroundLight = Color(0xFFF7FAFC);
  static const Color teal = Color(0xFF319795);
  static const Color blue = Color(0xFF3182CE);
  static const Color grayBorder = Color(0xFFCBD5E0);
  static const Color tealAccent = Color(0xFF81E6D9);
  static const Color shadow = Color(0x29000000);

  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [blueLight, tealLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
