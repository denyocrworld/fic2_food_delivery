import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

ThemeData getTMTheme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.grey[200],
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: GoogleFonts.abrilFatface(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
    ),
  );
}
