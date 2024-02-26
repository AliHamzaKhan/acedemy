import 'package:acedemy/constant/assets_contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          onTap: (){
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
