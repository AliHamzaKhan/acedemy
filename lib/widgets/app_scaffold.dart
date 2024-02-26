


import 'package:flutter/material.dart';
import '../config/size_config.dart';
import '../config/theme/app_colors.dart';
import '../constant/app_key_contant.dart';

class AppScaffold extends StatelessWidget {
  AppScaffold(
      {super.key,
        this.body,
        this.bottomNavBar,
        this.floatingButton,
        this.appBar,
        this.appBarTitle,
        this.appBarLeading,
        this.appBarColor,
        this.backgroundColor,
        this.drawer,
        this.endDrawer,
        this.scaffoldKey,
        this.bodyColor,
        this.bodyPadding,
        this.resizeToAvoidBottomInset});

  PreferredSizeWidget? appBar;
  Widget? body;
  Widget? bottomNavBar;
  Widget? floatingButton;
  bool? resizeToAvoidBottomInset;
  Widget? appBarTitle;
  Widget? appBarLeading;
  Color? appBarColor;
  Color? backgroundColor;
  Color? bodyColor;
  Widget? drawer;
  Widget? endDrawer;
  Key? scaffoldKey;
  EdgeInsets? bodyPadding;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawerEnableOpenDragGesture: false,
        key: scaffoldKey,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        appBar: appBar,
        body: Container(
          padding: bodyPadding ?? const EdgeInsets.symmetric(),
          decoration: BoxDecoration(
              color: bodyColor ?? AppColors.background,
          ),
          child: body,
        ),
        bottomNavigationBar: bottomNavBar,
        floatingActionButton: floatingButton,
        drawer: drawer,
        endDrawer: endDrawer,
      ),
    );
  }
}