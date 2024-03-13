


import 'package:get/get.dart';

class ExamsController extends GetxController{
  var isOffline = true.obs;

  Rx<ExamType> selectedExamType = ExamType.All.obs;

}

enum ExamType{
  All,
  Upcoming,
  Ongoing
}