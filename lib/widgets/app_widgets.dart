import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
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
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      AppTextMedium(
        text: title,
        size: 18,
      ),
      if(showAll)
      GestureDetector(
        onTap: onClick,
        child: AppTextBold(
          text: 'See All',
          size: 14,
          decoration: TextDecoration.underline,
        ),
      )
    ],
  );
}
