import 'package:acedemy/modules/result/view/result_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../utils/app_print.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';
import '../controller/result_controller.dart';

class ResultListView extends StatelessWidget {
  ResultListView({super.key});

  var controller = Get.put(ResultController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Obx(() => Column(
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
                    text: 'Results',
                    size: 25,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  Row(
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
                  )
                ],
              )),
          if (!controller.isOffline.value) ...[
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: setWidthValue(30),
                  vertical: setHeightValue(15)),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: controller.subjectsList
                    .map(
                      (element) => SubjectSelectionButton(
                    showImage: false,
                    element: element,
                    onSubjectSelected: (value) {
                      appDebugPrint(value);
                      if (value != null) {
                        controller.selectedSubject.value = value;
                      }
                      controller.update();
                    },
                    selectedSubject: controller.selectedSubject.value,
                  ),
                )
                    .toList(),
              ),
            ),
          ],
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ResultCard(
                    isOffline: controller.isOffline.value,
                    onClick: (){
                      Get.to(()=>ResultDetailView());
                    },
                  );
                }),
          )
        ],
      )),
    ));
  }
}
