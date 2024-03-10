import 'package:acedemy/constant/assets_contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/size_config.dart';
import '../config/theme/app_gradient.dart';
import '../constant/app_key_contant.dart';
import 'app_dialogue.dart';
import 'app_text.dart';

appAppBar(context,
    {Widget? leading,
    Widget? title,
    List<Widget>? actions,
    Color? appBarColor,
    bool? centerTitle}) {
  return AppBar(
    elevation: 0,
    backgroundColor: appBarColor ?? Theme.of(context).scaffoldBackgroundColor,
    leading: leading ??
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AssetsConstant.kBackArrowFill,
              width: 20,
              height: 20,
              color: Theme.of(context).primaryColor,
              fit: BoxFit.contain,
            ),
          ),
        ),
    title: title,
    centerTitle: centerTitle ?? true,
    actions: actions,
  );
}

appWithStyle(context, {double? height, String? title,Widget? trailing, Widget? leading}) {
  return Container(
      height: height ?? (Get.height * 0.10),
      width: Get.width,
      padding: EdgeInsets.all(setWidthValue(20)),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          gradient: appLinearGradient(),
          borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular(setHeightValue(AppSizeConstant.kAppRadius)),
              bottomRight:
                  Radius.circular(setHeightValue(AppSizeConstant.kAppRadius)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          (leading ??
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    AssetsConstant.kBackArrowFill,
                    width: 30,
                    height: 30,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fit: BoxFit.contain,
                  ),
                ),
              )),
          AppTextBold(
            text: title ?? '',
            size: 25,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),

          (trailing ??
              GestureDetector(
                onTap: () {
                  showUserProfileDialogue(context);
                },
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(setHeightValue(50)),
                    child: Image.asset(
                      'assets/vector/image.png',
                      width: setHeightValue(50),
                      height: setHeightValue(50),
                    )),
              )),
        ],
      ));
}
