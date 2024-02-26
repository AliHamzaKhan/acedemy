import 'package:flutter/material.dart';
import 'app_colors.dart';

final ThemeData lightThemeData = ThemeData(
  primarySwatch: Colors.blue,

  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.primary,
  ),
  fontFamily: getFontFamily,
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: AppColors.text,
    labelColor: AppColors.primary,
    labelStyle: TextStyle(
      fontFamily: getMedFontFamily,
      fontSize: 16,
      color: AppColors.text,
    ),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: AppColors.background,
        width: 2.5,
      ),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    margin: const EdgeInsets.only(
      left: 12,
      right: 12,
      top: 12,
    ),
    clipBehavior: Clip.antiAlias,
  ),
  // backgroundColor: Colors.transparent,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: AppColors.background,
      fontFamily: getRegFontFamily,
    ),
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColors.primary,
    shadowColor: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: getFontFamily,
      backgroundColor: Colors.transparent,
      fontSize: 31,
      color: AppColors.text,
    ),
    iconTheme: IconThemeData(color: AppColors.text),
  ),
  buttonTheme: ButtonThemeData(highlightColor: AppColors.primary),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(
          color: Colors.transparent,
          // color: themeData.themeColor(context),
        ),
      ),
      backgroundColor: AppColors.primary,
      textStyle:
          TextStyle(color: AppColors.background, fontFamily: getFontFamily),
      minimumSize: const Size.fromHeight(35), // NEW
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    displayLarge:
        TextStyle(fontFamily: getFontFamily, fontSize: 21, color: AppColors.text),
    displayMedium:
        TextStyle(fontFamily: getFontFamily, fontSize: 21, color: AppColors.text),
    displaySmall: TextStyle(fontFamily: getFontFamily, color: AppColors.text),
    headlineMedium:
        TextStyle(fontFamily: getFontFamily, fontSize: 18, color: AppColors.text),
    headlineSmall:
        TextStyle(fontFamily: getFontFamily, fontSize: 16, color: AppColors.text),
    bodyLarge:
        TextStyle(fontFamily: getFontFamily, fontSize: 16, color: AppColors.text),
    bodyMedium:
        TextStyle(fontFamily: getFontFamily, fontSize: 14, color: AppColors.text),
    titleSmall: TextStyle(
        fontFamily: getFontFamily, fontSize: 16, color: AppColors.text),
    titleMedium: TextStyle(
        fontFamily: getFontFamily, fontSize: 18, color: AppColors.text),
    titleLarge: TextStyle(
        fontFamily: getFontFamily, fontSize: 16, color: AppColors.text),
  ),
  scaffoldBackgroundColor: AppColors.background,
  brightness: Brightness.light,
  indicatorColor: AppColors.primary,
  primaryColor: AppColors.primary,
  floatingActionButtonTheme:  FloatingActionButtonThemeData(
    backgroundColor: const Color.fromRGBO(0, 0, 0, 0.3),
    foregroundColor: AppColors.primary,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    backgroundColor: Color.fromRGBO(183, 183, 183, 1),
    collapsedBackgroundColor: Color.fromRGBO(183, 183, 183, 1),
  ),
);
final ThemeData darkThemeData = ThemeData(
  primarySwatch: Colors.blue,

  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: AppColors.primary,
  ),
  fontFamily: getFontFamily,
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: Colors.black,
    labelColor: Colors.black,
    labelStyle: TextStyle(
      fontFamily: getMedFontFamily,
      fontSize: 16,
      color: Colors.black,
    ),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: AppColors.background,
        width: 2.5,
      ),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    margin: const EdgeInsets.only(
      left: 12,
      right: 12,
      top: 12,
    ),
    clipBehavior: Clip.antiAlias,
  ),
  // backgroundColor: Colors.transparent,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.white,
      fontFamily: getRegFontFamily,
    ),
  ),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: getFontFamily,
      backgroundColor: Colors.transparent,
      fontSize: 31,
      color: Colors.black,
    ),
    iconTheme: const IconThemeData(color: Colors.black),
  ),
  buttonTheme: const ButtonThemeData(highlightColor: Colors.black),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: const BorderSide(
          color: Colors.transparent,
          // color: themeData.themeColor(context),
        ),
      ),
      backgroundColor: AppColors.accent,
      textStyle: TextStyle(color: Colors.white, fontFamily: getFontFamily),
      minimumSize: const Size.fromHeight(35), // NEW
    ),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  dividerColor: AppColors.accent.withOpacity(0.3),
  textTheme: TextTheme(
    displayLarge:
        TextStyle(fontFamily: getFontFamily, fontSize: 21, color: Colors.black),
    displayMedium:
        TextStyle(fontFamily: getFontFamily, fontSize: 21, color: Colors.black),
    displaySmall: TextStyle(fontFamily: getFontFamily, color: Colors.black),
    headlineMedium:
        TextStyle(fontFamily: getFontFamily, fontSize: 18, color: Colors.black),
    headlineSmall:
        TextStyle(fontFamily: getFontFamily, fontSize: 16, color: Colors.black),
    bodyLarge:
        TextStyle(fontFamily: getFontFamily, fontSize: 16, color: Colors.black),
    bodyMedium:
        TextStyle(fontFamily: getFontFamily, fontSize: 14, color: Colors.black),
    titleSmall: TextStyle(
        fontFamily: getFontFamily, fontSize: 16, color: AppColors.accent),
    titleMedium: TextStyle(
        fontFamily: getFontFamily, fontSize: 18, color: AppColors.accent),
    titleLarge: TextStyle(
        fontFamily: getFontFamily, fontSize: 16, color: AppColors.accent),
  ),
  scaffoldBackgroundColor: Colors.transparent,
  brightness: Brightness.light,
  indicatorColor: Colors.blue,
  primaryColor: Colors.black,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color.fromRGBO(0, 0, 0, 0.3),
    foregroundColor: Colors.black,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Colors.white,
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    backgroundColor: Color.fromRGBO(183, 183, 183, 1),
    collapsedBackgroundColor: Color.fromRGBO(183, 183, 183, 1),
  ),
);

String get getFontFamily => 'Lato';

String get getRegFontFamily => 'Lato';

String get getMedFontFamily => 'Lato';

