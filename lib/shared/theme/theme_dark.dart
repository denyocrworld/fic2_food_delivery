import 'package:flutter/material.dart';

ThemeData getDarkTheme() {
  return ThemeData.dark().copyWith(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
    ),
  );
}
