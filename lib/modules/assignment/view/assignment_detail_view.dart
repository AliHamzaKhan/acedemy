


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/size_config.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';

class AssignmentDetailView extends StatelessWidget {
  const AssignmentDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            Container(
                height: Get.height * 0.10,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          AssetsConstant.kBackArrowFill,
                          width: 30,
                          height: 30,
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    AppTextBold(
                      text: 'Assignment',
                      size: 25,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                )),
            setHeight(10),
          ],
        ))
    );
  }
}
