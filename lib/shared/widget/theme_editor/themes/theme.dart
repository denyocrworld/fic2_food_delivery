import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  //Text
  static Color fontColor = Colors.grey[700]!;

  //Color
  static Color appbarBackgroundColor = Colors.white;
  static Color primaryColor = Colors.blueGrey;
  static Color scaffoldBackgroundColor = Colors.grey[300]!;
  static MaterialColor primarySwatch = Colors.blueGrey;
  static TextStyle googleFont = GoogleFonts.sora();
  static Color drawerBackgroundColor = const Color(0xff404E67);

  //drawer
  static Color drawerFontColor = Colors.grey[300]!;

  static double cardElevation = 0.8;
  static double cardBorderRadius = 24.0;
}

ThemeData getDefaultTheme() {
  return ThemeData(
    // primarySwatch:  Color(0xffFA533C),
    primaryColor: MainTheme.primaryColor,
    primarySwatch: MainTheme.primarySwatch,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(64.0),
        ),
        foregroundColor: Colors.white,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: MainTheme.appbarBackgroundColor,
      elevation: 0.6,
      titleTextStyle: MainTheme.googleFont.copyWith(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    scaffoldBackgroundColor: MainTheme.scaffoldBackgroundColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: MainTheme.drawerBackgroundColor,
    ),
    iconTheme: IconThemeData(
      color: MainTheme.fontColor,
    ),
    textTheme: TextTheme(
      bodyText1: MainTheme.googleFont.copyWith(color: MainTheme.fontColor),
      bodyText2: MainTheme.googleFont.copyWith(color: MainTheme.fontColor),
    ),
    cardTheme: CardTheme(
      elevation: MainTheme.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MainTheme.cardBorderRadius),
      ),
    ),
    chipTheme: const ChipThemeData(),
    tabBarTheme: TabBarTheme(
      labelColor: MainTheme.fontColor,
    ),
  );
}

ThemeData getDarkTheme() {
  return ThemeData.dark().copyWith(
    // primarySwatch:  Color(0xffFA533C),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     shape: ContinuousRectangleBorder(
    //       borderRadius: BorderRadius.circular(64.0),
    //     ),
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: MainTheme.appbarBackgroundColor,
      elevation: 0.6,
      titleTextStyle: MainTheme.googleFont.copyWith(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    // scaffoldBackgroundColor: MainTheme.scaffoldBackgroundColor,
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: MainTheme.drawerBackgroundColor,
    // ),
    // iconTheme: IconThemeData(
    //   color: MainTheme.fontColor,
    // ),
    textTheme: TextTheme(
      bodyText1: MainTheme.googleFont.copyWith(
        color: MainTheme.fontColor,
      ),
      bodyText2: MainTheme.googleFont.copyWith(
        color: MainTheme.fontColor,
      ),
    ),
    cardTheme: CardTheme(
      elevation: MainTheme.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MainTheme.cardBorderRadius),
      ),
    ),
    // chipTheme: const ChipThemeData(),
    // tabBarTheme: TabBarTheme(
    //   labelColor: MainTheme.fontColor,
    // ),
  );
}

ThemeData getElegantTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: const Color(0xff212332),
    // primarySwatch:  Color(0xffFA533C),
    canvasColor: const Color(0xff26354F),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     shape: ContinuousRectangleBorder(
    //       borderRadius: BorderRadius.circular(64.0),
    //     ),
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff212332),
      elevation: 0.6,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff2A2D3E),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: Color(0xff26354F),
      backgroundColor: Colors.red,
    ),
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: MainTheme.drawerBackgroundColor,
    // ),
    // iconTheme: IconThemeData(
    //   color: MainTheme.fontColor,
    // ),
    textTheme: TextTheme(
      bodyText1: MainTheme.googleFont.copyWith(color: Colors.white),
      bodyText2: MainTheme.googleFont.copyWith(color: Colors.white),
    ),
    cardTheme: CardTheme(
      elevation: MainTheme.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MainTheme.cardBorderRadius),
      ),
    ),
    // chipTheme: const ChipThemeData(),
    // tabBarTheme: TabBarTheme(
    //   labelColor: MainTheme.fontColor,
    // ),
  );
}

ThemeData getOrangeTheme() {
  return ThemeData.dark().copyWith(
    primaryColor: Colors.orange[800],
    // primarySwatch:  Color(0xffFA533C),
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     shape: ContinuousRectangleBorder(
    //       borderRadius: BorderRadius.circular(64.0),
    //     ),
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff06283D),
      elevation: 0.6,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    scaffoldBackgroundColor: const Color(0xff256D85),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      // backgroundColor: Color(0xff26354F),
      backgroundColor: Colors.red,
    ),
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: MainTheme.drawerBackgroundColor,
    // ),
    // iconTheme: IconThemeData(
    //   color: MainTheme.fontColor,
    // ),
    // textTheme: TextTheme(
    //   bodyText1: MainTheme.googleFont.copyWith(color: MainTheme.fontColor),
    //   bodyText2: MainTheme.googleFont.copyWith(color: MainTheme.fontColor),
    // ),
    cardTheme: CardTheme(
      color: const Color(0xff47B5FF),
      elevation: MainTheme.cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MainTheme.cardBorderRadius),
      ),
    ),
    // chipTheme: const ChipThemeData(),
    // tabBarTheme: TabBarTheme(
    //   labelColor: MainTheme.fontColor,
    // ),
  );
}
