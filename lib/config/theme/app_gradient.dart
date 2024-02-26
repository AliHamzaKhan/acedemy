import 'package:flutter/material.dart';
import 'app_colors.dart';

appLinearGradient(
    {List<Color>? colors,
    AlignmentGeometry? begin,
    AlignmentGeometry? end,
    List<double>? stops,
    TileMode? tileMode}) {
  return LinearGradient(
      colors: colors ?? [
        AppColors.primary,
        AppColors.primary.withOpacity(0.9),
        AppColors.primary.withOpacity(0.8),
      ],
      begin: begin ??  Alignment.bottomRight,
      end: end ?? Alignment.topLeft,
      stops: stops,
      tileMode: tileMode ?? TileMode.mirror);
}
