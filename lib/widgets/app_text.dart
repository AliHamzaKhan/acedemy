import 'package:flutter/material.dart';
import '../config/size_config.dart';
import '../config/theme/app_colors.dart';


//ignore: must_be_immutable
class AppTextRegular extends StatelessWidget {
  AppTextRegular(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.align,
      this.maxLines,
      this.overFlow,
      this.decorationThickness,
      this.decorationStyle,
      this.decoration});

  String text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextAlign? align;
  int? maxLines;
  TextOverflow? overFlow;
  TextDecoration? decoration;
  double? decorationThickness;
  TextDecorationStyle? decorationStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: appTextStyleRegular(context,
          weight: weight ?? FontWeight.w500,
          size: size ?? 20,
          color: color ?? AppColors.text,
          decoration: decoration,
          decorationThickness: decorationThickness,
          decorationStyle: decorationStyle),
      overflow: overFlow ?? TextOverflow.ellipsis,
      textAlign: align ?? TextAlign.left,
    );
  }
}


//ignore: must_be_immutable
class AppTextMedium extends StatelessWidget {
  AppTextMedium(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.align,
      this.maxLines,
      this.overFlow,
      this.decorationThickness,
      this.decorationStyle,
      this.decoration});

  String text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextAlign? align;
  int? maxLines;
  TextOverflow? overFlow;
  TextDecoration? decoration;
  double? decorationThickness;
  TextDecorationStyle? decorationStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: appTextStyleMedium(context,
          color: color ?? AppColors.text,
          size: size ?? 16,
          weight: weight ?? FontWeight.w600,
          decoration: decoration,
          decorationThickness: decorationThickness,
          decorationStyle: decorationStyle),
      overflow: overFlow ?? TextOverflow.ellipsis,
      textAlign: align ?? TextAlign.left,
    );
  }
}


//ignore: must_be_immutable
class AppTextBold extends StatelessWidget {
  AppTextBold(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.align,
      this.maxLines,
      this.overFlow,
      this.decorationThickness,
      this.decorationStyle,
      this.decoration});

  String text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextAlign? align;
  int? maxLines;
  TextOverflow? overFlow;
  TextDecoration? decoration;
  double? decorationThickness;
  TextDecorationStyle? decorationStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: appTextStyleBold(context,
          color: color ?? AppColors.text,
          size: size ?? 16,
          weight: weight ?? FontWeight.w600,
          decoration: decoration,
          decorationThickness: decorationThickness,
          decorationStyle: decorationStyle),
      overflow: overFlow ?? TextOverflow.ellipsis,
      textAlign: align ?? TextAlign.left,
    );
  }
}


//ignore: must_be_immutable
class AppTextExtraLight extends StatelessWidget {
  AppTextExtraLight(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.align,
      this.maxLines,
      this.overFlow,
      this.decorationThickness,
      this.decorationStyle,
      this.decoration});

  String text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextAlign? align;
  int? maxLines;
  TextOverflow? overFlow;
  TextDecoration? decoration;
  double? decorationThickness;
  TextDecorationStyle? decorationStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: appTextStyleSemiBold(
        context,
        color: color ?? AppColors.text,
        size: size ?? 16,
        weight: weight ?? FontWeight.w300,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle,
      ),
      overflow: overFlow ?? TextOverflow.ellipsis,
      textAlign: align ?? TextAlign.left,
    );
  }
}

appTextStyleRegular(
  context, {
  Color? color,
  double? size,
  FontWeight? weight,
  double? tabSize,
  TextDecoration? decoration,
  TextOverflow? overFlow,
  double? decorationThickness,
  TextDecorationStyle? decorationStyle,
}) {
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: color ?? AppColors.text,
        fontSize: size,
        fontWeight: weight ?? FontWeight.w500,
        overflow: overFlow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: color ?? AppColors.text,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle ?? TextDecorationStyle.solid,
      );
}

appTextStyleMedium(
  context, {
  Color? color,
  double? size,
  FontWeight? weight,
  double? tabSize,
  TextDecoration? decoration,
  TextOverflow? overFlow,
  double? decorationThickness,
  TextDecorationStyle? decorationStyle,
}) {
  return Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: color ?? AppColors.text,
        fontSize: size,
        fontWeight: weight ?? FontWeight.w700,
        overflow: overFlow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: color ?? AppColors.text,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle ?? TextDecorationStyle.solid,
      );
}

appTextStyleBold(
  context, {
  Color? color,
  Color? decorationColor,
  double? size,
  FontWeight? weight,
  double? tabSize,
  TextDecoration? decoration,
  TextOverflow? overFlow,
  double? decorationThickness,
  TextDecorationStyle? decorationStyle,
}) {
  return Theme.of(context).textTheme.titleMedium!.copyWith(
        color: color ?? AppColors.text,
        fontSize: size,
        fontWeight: weight ?? FontWeight.w900,
        overflow: overFlow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: color ?? AppColors.text,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle ?? TextDecorationStyle.solid,
      );
}

appTextStyleExtraLight(
  context, {
  Color? color,
  double? size,
  FontWeight? weight,
  double? tabSize,
  TextDecoration? decoration,
  TextOverflow? overFlow,
  double? decorationThickness,
  TextDecorationStyle? decorationStyle,
}) {
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: color ?? AppColors.text,
        fontSize: size,
        fontWeight: weight ?? FontWeight.w300,
        overflow: overFlow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: color ?? AppColors.text,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle ?? TextDecorationStyle.solid,
      );
}

appTextStyleSemiBold(
  context, {
  Color? color,
  double? size,
  FontWeight? weight,
  double? tabSize,
  TextDecoration? decoration,
  TextOverflow? overFlow,
  double? decorationThickness,
  TextDecorationStyle? decorationStyle,
}) {
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: color ?? AppColors.text,
        fontSize: size,
        fontWeight: weight ?? FontWeight.w800,
        overflow: overFlow ?? TextOverflow.ellipsis,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: color ?? AppColors.text,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle ?? TextDecorationStyle.solid,
      );
}

Widget titleSubTitleText(
    {required String head,
    required String title,
    maxLines,
    CrossAxisAlignment? crossAxisAlignment,
    int? headFlex,
    Color? textColor,
      double? textSize,
      Color? headColor}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
    children: [
      AppTextExtraLight(
        text: '$head:',
        size: textSize ?? 13,
        color: textColor ?? AppColors.text,
        align: TextAlign.left,
      ),
      setWidth(10),
      Expanded(
          child: AppTextRegular(
        text: title,
        size: textSize ?? 13,
        align: TextAlign.start,
        color: textColor ?? AppColors.text,
        maxLines: maxLines,
        overFlow: TextOverflow.clip,
      ))
    ],
  );
}

Widget titleSubTitleColumnText(
    {required String head,
    required String title,
    maxLines,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisAlignment? mainAxisAlignment,
    int? headFlex,
    textColor,
    double? textSize,
      FontWeight? weight}) {
  return Column(
    mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
    crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
    children: [
      AppTextExtraLight(
        text: head,
        size: textSize ?? 13,
        color: textColor ?? AppColors.text,
        align: TextAlign.left,
      ),
      setWidth(10),
      AppTextRegular(
        text: title,
        size: textSize ?? 13,
        align: TextAlign.start,
        color: textColor ?? AppColors.text,
        maxLines: maxLines,
        overFlow: TextOverflow.clip,
        weight:weight,
      )
    ],
  );
}
