import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

var primaryColor = const Color(0xffffce00);
var secondaryColor = const Color(0xFF2A2D3E);
var textColor = const Color(0xff092543);
var iconColor = const Color(0xff092543);

var dangerColor = Colors.red[300]!;
var successColor = const Color(0xff8cc63f);
var infoColor = Colors.blue[300]!;
var warningColor = Colors.orange[300]!;
var disabledColor = Colors.grey[300]!;

ThemeData getDefaultTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: GoogleFonts.roboto(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      iconTheme: IconThemeData(
        color: iconColor,
      ),
      elevation: 0.0,
    ),
    cardTheme: const CardTheme(
      elevation: 1.4,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: textColor,
      unselectedItemColor: textColor.withOpacity(0.5),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      foregroundColor: textColor,
    ),
  );
}
