import 'package:flutter/material.dart';

class AppThemes{
  static const Color primary = Colors.pink;

  static final ThemeData pinkDarkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    )
  );

  static final ThemeData pinkLightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    )
  );

}