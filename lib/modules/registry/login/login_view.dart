import 'package:acedemy/config/routes/app_routes.dart';
import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/widgets/app_button.dart';
import 'package:acedemy/widgets/app_dropdown.dart';
import 'package:acedemy/widgets/app_input_field.dart';
import 'package:acedemy/widgets/app_scaffold.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_appbar.dart';
import '../controller/auth_controller.dart';
import '../controller/login_controller.dart';
import '../forgot/forgot_view.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  var controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      resizeToAvoidBottomInset: false,
      appBar: appAppBar(
        context,
      ),
      body: Obx(() => Column(
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
                        items: controller.schoolList
                            .map((element) => element)
                            .toList(),
                        value: controller.selectedSchool.value,
                        onSelected: (value) {
                          controller.selectedSchool(value);
                        }),
                    setHeight(5),
                    appInputWithCustomLabel(
                        onChanged: (value) {},
                        label: 'ID',
                        controller: controller.emailController,
                        keyboardType: TextInputType.number),
                    setHeight(5),
                    appInputWithCustomLabel(
                        onChanged: (value) {},
                        label: 'Password',
                        controller: controller.passwordController,
                        keyboardType: TextInputType.visiblePassword),
                    setHeight(10),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {
                              Get.to(() => ForgotView());
                            },
                            child: AppTextRegular(
                              text: 'Forgot Password',
                              size: 12,
                              decoration: TextDecoration.underline,
                            ))),
                    setHeight(10),
                    AppButton(
                      title: 'Login',
                      onTap: () {
                        Get.toNamed(AppRoutes.home);
                      },
                      width: Get.width,
                      height: 45,
                    ),
                    setHeight(10),
                    if (controller.loginType.value == LoginType.Parents ||
                        controller.loginType.value == LoginType.Student) ...[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'Login as :  ',
                          style: appTextStyleExtraLight(context, size: 16),
                        ),
                        TextSpan(
                          text: controller.loginType.value.name,
                          style: appTextStyleSemiBold(context, size: 16),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              if (controller.loginType.value ==
                                  LoginType.Parents) {
                                controller.loginType.value = LoginType.Student;
                              } else {
                                controller.loginType.value = LoginType.Parents;
                              }
                              controller.loginType.refresh();
                            },
                        ),
                      ]))
                    ]
                  ],
                ),
              )
            ],
          )),
    );
  }

  top() {
    return Column(
      children: [
        setHeight(Get.height * 0.15),
        AppTextMedium(
          text: 'Let\'s Sign In As\n${controller.loginType.value.name}',
          size: 30,
          color: AppColors.primary,
          align: TextAlign.center,
        ),
        setHeight(10),
        AppTextRegular(text: 'Please Provide Details to continue'),
        setHeight(15),
      ],
    );
  }
}
