


import 'package:acedemy/utils/app_print.dart';
import 'package:get/get.dart';

class ChatController extends GetxController{


  getParams(){
    var id = Get.parameters["id"] ?? "";
    appDebugPrint('id $id');
  }
}