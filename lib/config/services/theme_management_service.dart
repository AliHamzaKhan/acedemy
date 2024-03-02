

import 'package:acedemy/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_styles.dart';

class ThemeManagementService extends GetxService{

  changeTheme(){

  }
}

List<ThemeData> getThemes() {
  return [
    appDefaultTheme,
    appDarkDefaultTheme
  ];
}


final appDefaultTheme = ThemeData(
  scrollbarTheme: const ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(Colors.red[500]),
  ),
  // highlightColor: Colors.red[500],
  brightness: Brightness.light,
  primaryColor: AppColors.primary,
  colorScheme: ThemeData().colorScheme.copyWith(
    primary: AppColors.primary,
  ),
  scaffoldBackgroundColor: const Color(0xffffffff),
  canvasColor: const Color(0xffffffff),
  dividerColor: AppColors.borderColor,
  fontFamily: 'Lato',
  textTheme: TextTheme(
    displayLarge: AppStyles.h1.copyWith(
      color: AppColors.text,
    ),
    displayMedium: AppStyles.h2.copyWith(
      color: AppColors.text,
    ),
    displaySmall: AppStyles.h3.copyWith(
      color: AppColors.text,
    ),
    titleMedium: AppStyles.bodyBold.copyWith(
      color: AppColors.text,
    ),
    titleSmall: AppStyles.bodySemiBold.copyWith(
      color: AppColors.text,
    ),
    bodyLarge: AppStyles.bodyRegular.copyWith(
      color: AppColors.text,
    ),
    bodyMedium: AppStyles.labelBold.copyWith(
      color: AppColors.text,
    ),
    labelLarge: AppStyles.button.copyWith(
      color: AppColors.text,
    ),
    bodySmall: AppStyles.caption.copyWith(
      color: AppColors.text,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

final appDarkDefaultTheme = ThemeData(
  scrollbarTheme: ScrollbarThemeData().copyWith(
    thumbColor: MaterialStateProperty.all(Colors.red[500]),
  ),
  // highlightColor: Colors.red[500],
  brightness: Brightness.dark,
  primaryColor: AppDarkColors.primary,
  scaffoldBackgroundColor: const Color.fromARGB(255, 107, 103, 103),
  canvasColor: const Color.fromARGB(255, 8, 8, 8),
  fontFamily: 'Lato',
  textTheme: TextTheme(
    displayLarge: AppStyles.h1.copyWith(
      color: AppDarkColors.text,
    ),
    displayMedium: AppStyles.h2.copyWith(
      color: AppDarkColors.text,
    ),
    displaySmall: AppStyles.h3.copyWith(
      color: AppDarkColors.text,
    ),
    titleMedium: AppStyles.bodyBold.copyWith(
      color: AppDarkColors.text,
    ),
    titleSmall: AppStyles.bodySemiBold.copyWith(
      color: AppDarkColors.text,
    ),
    bodyLarge: AppStyles.bodyRegular.copyWith(
      color: AppDarkColors.text,
    ),
    bodyMedium: AppStyles.labelBold.copyWith(
      color: AppDarkColors.text,
    ),
    labelLarge: AppStyles.button.copyWith(
      color: AppDarkColors.text,
    ),
    bodySmall: AppStyles.caption.copyWith(
      color: AppDarkColors.text,
    ),
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
Rx<ThemeMode> globalThemeMode = ThemeMode.system.obs;
