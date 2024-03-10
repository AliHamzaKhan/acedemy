import 'package:acedemy/widgets/app_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_colors.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_bottom_sheet.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';

class AssignmentDetailView extends StatelessWidget {
  AssignmentDetailView({super.key, this.isAssigned = true});

  bool isAssigned;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Assignment',
                  trailing: const SizedBox(width: 30,)),
              setHeight(10),
              details(),
            ],
          )),
      floatingButton: isAssigned
          ? AppIconButton(
              icon: AssetsConstant.kUploadFill,
              onTap: () {
                showUploadFiles(context, onAddFile: () {});
              },
              iconSize: 30,
              width: 50,
              height: 50,
            )
          : null,
    );
  }

  details() {
    return Column(
      children: [
        MultiTextCard(
          head: 'Assignment Name',
          text: 'Drawing Of Nature',
        ),
        MultiTextCard(
          head: 'Subject Name',
          text: 'Drawing',
        ),
        MultiTextCard(
          head: 'Due Date',
          text: 'Due 22, March 2024, 01:29 AM',
        ),
        Container(
          width: Get.width,
          margin: EdgeInsets.all(setHeightValue(10)),
          padding: EdgeInsets.all(setHeightValue(20)),
          decoration: BoxDecoration(
              color: AppColors.cardColor,
              borderRadius: BorderRadius.circular(AppSizeConstant.kCardRadius)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextExtraLight(
                text: 'My Work',
                size: 14,
                color: AppColors.text,
                align: TextAlign.left,
              ),
              setHeight(10),
              DottedBorder(
                borderType: BorderType.RRect,
                color: Colors.black,
                strokeWidth: 0.5,
                padding: EdgeInsets.all(setHeightValue(10)),
                radius: Radius.circular(setHeightValue(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppTextExtraLight(
                      text: 'Screenshoot_name',
                      size: 14,
                    ),
                    AppIconButton(
                      icon: Icons.visibility,
                      onTap: () {},
                      height: 30,
                      width: 30,
                      iconSize: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        if (!isAssigned) ...[
          MultiTextCard(
            head: 'Possible Points',
            text: '50',
          ),
        ] else ...[
          MultiTextCard(
            head: 'Points',
            text: '9/10',
          ),
        ],
      ],
    );
  }
}
