import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/size_config.dart';
import '../../../config/theme/app_colors.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: appAppBar(context),
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            top(),
            pins(),
            timer()
          ],
        ),
      ),
    );
  }

  top() {
    return Column(
      children: [
        setHeight(Get.height * 0.25),
        AppTextMedium(text: 'OTP Pin', size: 30, color: AppColors.primary,),
        setHeight(15),
        AppTextRegular(
          text: 'Opt has been sent to your email',
        ),
        setHeight(15),
      ],
    );
  }

  pins() {
    var size = Get.width / 6;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          4,
          (index) => Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(setHeightValue(20)),
                    border: Border.all(color: AppColors.primary)
                ),
              )),
    );
  }
  timer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        setHeight(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppTextRegular(text: '60 seconds', size: 13),
            setWidth(10),
            AppTextRegular(text: 'Resend?',size: 15, color: AppColors.borderColor,),
            setWidth(20),
          ],
        ),
      ],
    );
  }
}
