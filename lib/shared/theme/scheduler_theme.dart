import 'package:example/core.dart';
import 'package:flutter/material.dart';

class SchedulerTheme {
  static const primaryColor = Color(0xff222429);
  static const mainColor = Color(0xff00880c);
  static Color scaffoldBackgroundColor = Colors.grey[300]!;
  static const cardColor = Color(0xff0081a0);
  static const buttonColor = Color(0xff00a5cf);
  static const textColor = Color(0xff222429);
  static var fontFamily = GoogleFonts.roboto();

  static const cardBorderRadius = 6.0;
}

ThemeData getSchedulerTheme() {
  return ThemeData().copyWith(
    primaryColor: SchedulerTheme.mainColor,
    // primarySwatch:  Color(0xffFA533C),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: SchedulerTheme.buttonColor,
        // shape: ContinuousRectangleBorder(
        //   borderRadius: BorderRadius.circular(64.0),
        // ),
        shape: const StadiumBorder(),
        foregroundColor: Colors.white,
      ),
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: SchedulerTheme.primaryColor,
      elevation: 0.6,
      titleTextStyle: GoogleFonts.montserrat(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    ),
    scaffoldBackgroundColor: SchedulerTheme.scaffoldBackgroundColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // backgroundColor: Color(0xff26354F),
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey[400],
      selectedItemColor: SchedulerTheme.mainColor,
    ),
    // drawerTheme: DrawerThemeData(
    //   backgroundColor: drawerBackgroundColor,
    // ),
    // iconTheme: IconThemeData(
    //   color: fontColor,
    // ),
    listTileTheme: const ListTileThemeData(
      selectedColor: Colors.red,
    ),
    // textTheme: TextTheme(
    //   bodyText1: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   bodyText2: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   headline1: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   headline2: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   headline3: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   headline4: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   displaySmall: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   displayMedium: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    //   displayLarge: SchedulerTheme.fontFamily.copyWith(
    //     color: SchedulerTheme.textColor,
    //   ),
    // ),
    cardTheme: CardTheme(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SchedulerTheme.cardBorderRadius),
      ),
    ),
    // chipTheme: const ChipThemeData(),
    // tabBarTheme: TabBarTheme(
    //   labelColor: fontColor,
    // ),
  );
}
