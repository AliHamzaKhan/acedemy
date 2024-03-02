import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/constant/app_key_contant.dart';
import 'package:acedemy/constant/assets_contant.dart';
import 'package:acedemy/widgets/app_button.dart';
import 'package:acedemy/widgets/app_input_field.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/model/home_nav_model.dart';

class AppBottomNav extends StatelessWidget {
  AppBottomNav({super.key, required this.currentIndex, required this.onChange});

  int currentIndex = 0;
  Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: setHeightValue(60),
      width: Get.width,
      margin: EdgeInsets.symmetric(
          horizontal: setWidthValue(50), vertical: setHeightValue(10)),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(setHeightValue(15)),
          border: Border.all(color: Theme.of(context).dividerColor)),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        elevation: 0,
        currentIndex: currentIndex,
        items: bottomNavItems
            .map((e) => BottomNavigationBarItem(
                label: e.title,
                activeIcon: Image.asset(
                  e.selectedImage,
                  width: 30,
                  height: 30,
                  color: Theme.of(context).primaryColor,
                ),
                icon: Image.asset(
                  e.image,
                  width: 30,
                  height: 30,
                  color: Theme.of(context).dividerColor,
                )))
            .toList(),
        onTap: onChange,
      ),
    );
  }
}

Widget seeAll({required String title, var onClick, bool showAll = true}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: setHeightValue(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppTextMedium(
          text: title,
          size: 18,
        ),
        if (showAll)
          GestureDetector(
            onTap: onClick,
            child: AppTextBold(
              text: 'See All',
              size: 14,
              decoration: TextDecoration.underline,
            ),
          )
      ],
    ),
  );
}

class ChatFooter extends StatelessWidget {
  ChatFooter({super.key, this.onChange, this.onClick});

  var onChange;
  var onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: setWidthValue(30),
          right: setWidthValue(30),
          bottom: setHeightValue(10)),
      padding: EdgeInsets.symmetric(
          horizontal: setWidthValue(30), vertical: setHeightValue(5)),
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          Expanded(
              child: AppInputField(
            hintText: 'Message',
            onChanged: onChange,
            textSize: 18,
            isBorder: false,
            radius: 30,
            color: AppColors.transparent,
            textColor: AppColors.text,
            hintTextColor: AppColors.text,
            cursorColor: AppColors.text,
            isErrorBorderEnable: false,
          )),
          setWidth(10),
          AppIconButton(
            icon: AssetsConstant.kSend,
            onTap: onClick,
            iconSize: 25,
            radius: 100,
            margin: EdgeInsets.all(setHeightValue(5)),
          )
        ],
      ),
    );
  }
}
