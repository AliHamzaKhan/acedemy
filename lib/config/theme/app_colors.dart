import 'package:flutter/material.dart';

abstract class AppColors {
  static Color background = const Color(0xFFFFFFFF);
  static Color primary = const Color(0xFF094796);
  static Color secondary = const Color(0xFF0DFFD3);
  static Color accent = const Color(0xFFA5A5A5);
  static Color text = const Color(0xFF323643);
  static Color danger = const Color(0xFFE8411C);
  static Color borderColor = const Color(0xFFB2AAAA);
  static Color cardColor = const Color(0xFFF8F5F5);
  static Color transparent =  Colors.transparent;

}
abstract class AppDarkColors {
  static Color background = const Color(0xFFFFFFFF);
  static Color primary = const Color(0xFF117B31);
  static Color secondary = const Color(0xFFFFDB0D);
  static Color accent = const Color(0xFFA5A5A5);
  static Color text = const Color(0xFF323643);
  static Color danger = const Color(0xFFE8411C);
  static Color borderColor = const Color(0xFFE0E0E0);
  static Color transparent =  Colors.transparent;

}

Color presentColor =  Colors.greenAccent.shade100;
Color absentColor =  Colors.redAccent.shade100;