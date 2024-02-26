


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_colors.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_dropdown.dart';
import '../../../widgets/app_input_field.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';
import '../controller/auth_controller.dart';
import '../otp/otp_view.dart';

class ForgotView extends StatelessWidget {
  ForgotView({super.key});

  var controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: appAppBar(context),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          top(),
          Container(
            padding: EdgeInsets.all(setHeightValue(20)),
            child: Column(
              children: [
                appDropDownWithCustomLabel(
                    label: 'School',
                    items: controller.schoolList.map((element) => element).toList(),
                    value: controller.selectedSchool.value,
                    onSelected: (value) {
                      controller.selectedSchool(value);
                    }),
                setHeight(5),
                appInputWithCustomLabel(
                    onChanged: (value) {},
                    label: 'ID',
                    controller: controller.emailController,
                    keyboardType: TextInputType.number
                ),

                setHeight(10),

                AppButton(
                  title: 'Send Code',
                  onTap: () {
                    Get.to(()=>OtpScreen());
                  },
                  width: Get.width * 0.7,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  top(){
    return Column(
      children: [
        setHeight(Get.height * 0.25),
        AppTextMedium(text: 'Forgot Your Password?', size: 30, color: AppColors.primary,),
        setHeight(15),
        AppTextRegular(text: 'Please Provide Details to continue'),
        setHeight(15),
      ],
    );
  }
}
