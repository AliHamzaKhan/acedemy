


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../config/demo/school_list_demo.dart';
import '../../../utils/app_print.dart';

class AuthController extends GetxController{
  var schoolList = <String>[].obs;
  var selectedSchool = 'Noor Public School'.obs;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  addSchool(){
    schoolList.addAll(demoSchoolList);
    appDebugPrint(schoolList.length);
  }

  @override
  void onInit() {
    super.onInit();
    addSchool();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}