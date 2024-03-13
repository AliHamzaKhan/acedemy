import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';
import '../controller/exmas_controller.dart';
import 'exam_time_table.dart';

class ExamsView extends StatelessWidget {
  ExamsView({super.key});

  var controller = Get.put(ExamsController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Container(
              height: Get.height * 0.18,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppTextBold(
                    text: 'Exams',
                    size: 25,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AppButton(
                            width: 120,
                            title: 'Offline',
                            onTap: () {
                              controller.isOffline.value = true;
                            },
                            isShadow: false,
                            radius: 5,
                            btnColor: controller.isOffline.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.transparent,
                            textColor: !controller.isOffline.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.text,
                          ),
                          AppButton(
                            width: 120,
                            title: 'Online',
                            onTap: () {
                              controller.isOffline.value = false;
                            },
                            isShadow: false,
                            radius: 5,
                            btnColor: !controller.isOffline.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.transparent,
                            textColor: controller.isOffline.value
                                ? Theme.of(context).scaffoldBackgroundColor
                                : AppColors.text,
                          )
                        ],
                      ))
                ],
              )),
          setHeight(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: ExamType.values
                .map((e) => ExamFilterSelection(
                      examEnum: e,
                      onSelected: (type) {
                        controller.selectedExamType(type);
                      },
                      selectedExamEnum: controller.selectedExamType.value,
                    ))
                .toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
                itemBuilder: (context, index){
              return ExamListCard(
                onClick: (){
                  Get.to(()=>ExamTimeTable());
                },
              );
            }),
          )
        ],
      ),
    ));
  }
}
