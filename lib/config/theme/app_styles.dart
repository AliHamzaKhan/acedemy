


import 'package:acedemy/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class AppStyles {
  static const TextStyle h1 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle h5 = TextStyle(
    fontFamily: 'Inter',
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle bodyBold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle bodySemiBold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle bodyRegular = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle labelBold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 13,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle labelSemiBold = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle labelRegular = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'Inter',
    fontSize: 11,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static loadingStyleConfig() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 200.0
      ..radius = 10.0
      ..indicatorWidget = SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
            color: AppColors.primary,
            backgroundColor: AppColors.secondary,
            strokeWidth: 10,
          ))
      ..progressColor =  AppColors.primary
      ..backgroundColor = AppColors.transparent
      ..boxShadow = <BoxShadow>[]
      ..indicatorColor = AppColors.primary
      ..textColor = AppColors.primary
      ..fontSize = 14
      ..textStyle = AppStyles.labelSemiBold.copyWith(color: AppColors.primary)
      ..maskColor = AppColors.secondary.withOpacity(0.1)
      ..userInteractions = true
      ..dismissOnTap = false;
  }
}