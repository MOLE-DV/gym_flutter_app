import 'package:flutter/material.dart';

class AppTheme {
  ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Color.fromARGB(255, 27, 35, 40),
    textTheme: TextTheme(),
  );
}
