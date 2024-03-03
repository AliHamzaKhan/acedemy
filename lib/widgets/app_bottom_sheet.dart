import 'package:acedemy/config/services/data_parser_service.dart';
import 'package:acedemy/widgets/app_divider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/demo/demo_content.dart';
import '../config/enum/sorting_enum.dart';
import '../config/model/menu_model.dart';
import '../config/routes/app_routes.dart';
import '../config/size_config.dart';
import '../config/theme/app_colors.dart';
import '../constant/app_key_contant.dart';
import '../constant/assets_contant.dart';
import 'app_button.dart';
import 'app_cards.dart';
import 'app_checkbox.dart';
import 'app_text.dart';

void menuSheet(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(AppSizeConstant.kAppRadius),
      topRight: Radius.circular(AppSizeConstant.kAppRadius),
    )),
    builder: (BuildContext context) {
      return Container(
        height: Get.height * 0.7,
        padding: EdgeInsets.all(setHeightValue(10)),
        child: Column(
          children: [
            setHeight(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: setHeightValue(60),
                  height: setHeightValue(60),
                  padding: EdgeInsets.all(setWidthValue(10)),
                  margin: EdgeInsets.symmetric(horizontal: setWidthValue(30)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: AppColors.text)),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      AssetsConstant.kUsersFill,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                setWidth(20),
                titleSubTitleColumnText(
                    head: 'David Dany',
                    title: 'Class 9',
                    textSize: 18,
                    textColor: Theme.of(context).primaryColor),
                setWidth(20),
                Expanded(
                  child: titleSubTitleText(
                      head: 'Roll No',
                      title: '1',
                      textSize: 18,
                      textColor: Theme.of(context).primaryColor),
                ),
                AppIconButton(
                  btnColor: Theme.of(context).scaffoldBackgroundColor,
                  iconColor: Theme.of(context).primaryColor,
                  icon: AssetsConstant.kForwardArrowFill,
                  iconSize: 30,
                  onTap: () {
                    Get.toNamed(AppRoutes.profile);
                  },
                )
              ],
            ),
            appDivider(context),
            setHeight(20),
            Expanded(
                child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: setHeightValue(0),
              crossAxisSpacing: setHeightValue(0),
              padding: EdgeInsets.all(setHeightValue(0)),
              children: menus
                  .map((e) => MenuCard(
                        menuModel: e,
                      ))
                  .toList(),
            )),
          ],
        ),
      );
    },
  );
}

void showSubjectSheet(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(AppSizeConstant.kAppRadius),
      topRight: Radius.circular(AppSizeConstant.kAppRadius),
    )),
    builder: (BuildContext context) {
      return Container(
        height: Get.height * 0.7,
        padding: EdgeInsets.all(setHeightValue(20)),
        child: Column(
          children: [
            AppTextBold(
              text: 'Subjects',
              size: 18,
            ),
            setHeight(5),
            appDivider(context),
            setHeight(10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: demoSubjectList
                    .map((e) => SubjectsCard(
                          subjectModel: e,
                          onClick: () {},
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      );
    },
  );
}

void showSortingSheet(context, {required SortingEnum selected, required Function(SortingEnum) onSelected}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(AppSizeConstant.kAppRadius),
      topRight: Radius.circular(AppSizeConstant.kAppRadius),
    )),
    builder: (context) {
      return Container(
        height: Get.height * 0.3,
        padding: EdgeInsets.all(setHeightValue(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: AppTextBold(
                text: 'Sort By',
                size: 18,
              ),
            ),
            setHeight(5),
            appDivider(context),
            setHeight(10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: SortingEnum.values
                    .map((e) => PbLabelRadioButton(
                          label: dataParser.getSpaceText(e.name),
                          value: selected == e,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          onChanged: (value) {
                            onSelected(e);
                            Get.back();
                          },
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      );
    },
  );
}

