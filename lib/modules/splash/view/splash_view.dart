


import 'package:acedemy/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  var controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            AppTextBold(text: 'Splash Screen')
          ],
        ),
      ),
    );
  }
}
