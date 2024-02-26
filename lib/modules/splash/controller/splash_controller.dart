


import 'package:get/get.dart';

import '../../../config/routes/app_routes.dart';

class SplashController extends GetxController{


  goToLogin(){
    Future.delayed(Duration(seconds: 1), (){
      Get.toNamed(AppRoutes.loginSelection);
    });
  }
  goToHome(){
    Future.delayed(Duration(seconds: 1), (){
      Get.toNamed(AppRoutes.home);
    });
  }
  @override
  void onInit() {
    super.onInit();
    // goToHome();
    goToLogin();
  }
}