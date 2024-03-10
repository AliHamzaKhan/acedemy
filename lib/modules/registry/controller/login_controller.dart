


import 'package:acedemy/utils/app_print.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/demo/demo_content.dart';

class LoginController extends GetxController{
  Rx<LoginType> loginType = LoginType.Student.obs;
  var schoolList = <String>[].obs;
  var selectedSchool = 'Noor Public School'.obs;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  addSchool(){
    schoolList.addAll(demoSchoolList);
    appDebugPrint(schoolList.length);
  }


  getArgs(){
    loginType.value = Get.arguments['loginType'] ?? LoginType.Student;
  }
  @override
  void onInit() {
    super.onInit();
    getArgs();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    addSchool();
  }
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}

enum LoginType{
  Student,
  Parents,
  Teacher,
  Management
}