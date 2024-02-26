import 'package:acedemy/config/routes/app_routes.dart';
import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/config/theme/app_gradient.dart';
import 'package:acedemy/widgets/app_button.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/app_key_contant.dart';
import '../../../widgets/app_scaffold.dart';

class LoginSelectionView extends StatelessWidget {
  const LoginSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: Get.height * 0.5,
            width: Get.width,
            padding: EdgeInsets.symmetric(
              horizontal: setWidthValue(50)
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                gradient: appLinearGradient(),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(setHeightValue(AppSizeConstant.kAppRadius)),
                  topLeft: Radius.circular(setHeightValue(AppSizeConstant.kAppRadius)),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    AppTextBold(
                      text: 'eSchool - Virtual School Management System',
                      color: AppColors.background,
                      size: 30,
                      overFlow: TextOverflow.clip,
                      align: TextAlign.center,
                    ),
                    setHeight(15),
                    AppTextRegular(
                      text: 'eSchool serves you Virtual\nEducation at home',
                      color: AppColors.background,
                      overFlow: TextOverflow.clip,
                      align: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    AppButton(
                      title: 'Login as Student',
                      onTap: () {
                        Get.toNamed(AppRoutes.login, arguments: {
                          'isParent' : false
                        });
                      },
                      btnColor: AppColors.background,
                      isShadow: false,
                      width: Get.width,
                      height: 45,
                      radius: 10,
                      textColor: AppColors.primary,
                    ),
                    setHeight(15),
                    AppButton(
                      title: 'Login as Parent',
                      onTap: () {
                        Get.toNamed(AppRoutes.login, arguments: {
                          'isParent' : true
                        });
                      },
                      btnColor: AppColors.primary,
                      isShadow: false,
                      isOutline: true,
                      width: Get.width,
                      height: 45,
                      radius: 10,
                      textColor: AppColors.background,
                      borderColor: AppColors.background,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
