import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/utils/app_print.dart';
import 'package:acedemy/widgets/app_button.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_bottom_sheet.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/assignment_controller.dart';

class AssignmentView extends StatelessWidget {
  AssignmentView({super.key});

  var controller = Get.put(AssignmentController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Container(
              height: Get.height * 0.15,
              width: Get.width,
              padding: EdgeInsets.all(setWidthValue(20)),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: appLinearGradient(),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          setHeightValue(AppSizeConstant.kAppRadius)),
                      bottomRight: Radius.circular(
                          setHeightValue(AppSizeConstant.kAppRadius)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      AppTextBold(
                        text: 'Assignments',
                        size: 25,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      InkWell(
                        onTap: () {
                          showSortingSheet(context,
                              selected: controller.selected.value,
                              onSelected: (value) {
                            controller.selected(value);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            AssetsConstant.kMoreFill,
                            width: 30,
                            height: 30,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppButton(
                            width: 120,
                            title: 'Assigned',
                            onTap: () {
                              controller.isAssigned.value = true;
                            },
                            isShadow: false,
                            radius: 5,
                            btnColor: controller.isAssigned.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.transparent,
                            textColor: !controller.isAssigned.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.text,
                          ),
                          AppButton(
                            width: 120,
                            title: 'Submitted',
                            onTap: () {
                              controller.isAssigned.value = false;
                            },
                            isShadow: false,
                            radius: 5,
                            btnColor: !controller.isAssigned.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.transparent,
                            textColor: controller.isAssigned.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.text,
                          )
                        ],
                      ))
                ],
              )),
          setHeight(10),
          Expanded(
            child: DefaultTabController(
              length: controller.subjectsList.length,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ButtonsTabBar(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: setWidthValue(30),
                          vertical: setHeightValue(5)),
                      backgroundColor: Theme.of(context).primaryColor,
                      unselectedBackgroundColor: Colors.white,
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      borderWidth: 0,
                      unselectedBorderColor: Colors.blue,
                      radius: 10,
                      tabs: controller.subjectsList
                          .map((element) => Tab(
                                text: element,
                              ))
                          .toList(),
                      onTap: (index){
                        appDebugPrint(controller.subjectsList[index]);
                      },
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
