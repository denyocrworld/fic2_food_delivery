import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData().copyWith(
    primaryColor: primaryColor,
    // primarySwatch: primarySwatch,
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: primaryColor,
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: appbarBackgroundColor,
      elevation: 0.6,
      titleTextStyle: googleFont.copyWith(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: drawerBackgroundColor,
    ),
    iconTheme: IconThemeData(
      color: textColor1,
    ),
    textTheme: TextTheme(
      bodyText1: googleFont.copyWith(color: textColor1),
      bodyText2: googleFont.copyWith(color: textColor1),
    ),
    // cardTheme: const CardTheme(
    // elevation: cardElevation,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(cardBorderRadius),
    // ),
    // ),
    chipTheme: const ChipThemeData(),
    tabBarTheme: TabBarTheme(
      labelColor: textColor1,
    ),
    //#TEMPLATE theme_scroll
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(Colors.blueGrey),
    ),
    //#END
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: Colors.grey[500],
    ),
  );
  return ThemeData(
    primaryColor: primaryColor,
    primarySwatch: primarySwatch,
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     backgroundColor: primaryColor,
    //     foregroundColor: Colors.white,
    //   ),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: appbarBackgroundColor,
      elevation: 0.6,
      titleTextStyle: googleFont.copyWith(
        color: Colors.blueGrey[700],
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: drawerBackgroundColor,
    ),
    iconTheme: IconThemeData(
      color: textColor1,
    ),
    textTheme: TextTheme(
      bodyText1: googleFont.copyWith(color: textColor1),
      bodyText2: googleFont.copyWith(color: textColor1),
    ),
    // cardTheme: const CardTheme(
    // elevation: cardElevation,
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(cardBorderRadius),
    // ),
    // ),
    chipTheme: const ChipThemeData(),
    tabBarTheme: TabBarTheme(
      labelColor: textColor1,
    ),
    //#TEMPLATE theme_scroll
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(Colors.blueGrey),
    ),
    //#END
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: Colors.grey[500],
    ),
  );
}
