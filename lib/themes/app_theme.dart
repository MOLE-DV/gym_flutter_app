import 'package:flutter/material.dart';

class AppTheme {
  // static const Color myRed = Color.fromARGB(255, 204, 38, 38);
  static const Color backgroundBlack = Color.fromARGB(255, 23, 21, 30);

  ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    focusColor: const Color.fromARGB(255, 45, 42, 54),
    highlightColor: Colors.red.shade500,

    colorScheme: ColorScheme.dark(
      primary: Colors.white,
      secondary: Colors.white70,
    ),

    scaffoldBackgroundColor: backgroundBlack,

    cardTheme: CardThemeData(
      color: const Color.fromARGB(255, 31, 29, 37),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: const Color.fromARGB(255, 52, 48, 62)),
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color.fromARGB(255, 31, 29, 37),
      selectedIconTheme: IconThemeData(color: Colors.red),
      selectedItemColor: Colors.red,
    ),
    iconTheme: IconThemeData(color: const Color.fromARGB(255, 237, 20, 5)),

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.red),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        iconColor: WidgetStateProperty.all(backgroundBlack),
        textStyle: WidgetStateProperty.all(TextStyle(color: backgroundBlack)),
      ),
    ),
  );
}
