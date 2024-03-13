


import 'package:get/get.dart';

class ExamsController extends GetxController{
  var isOffline = true.obs;

  Rx<ExamType> selectedExamType = ExamType.All.obs;

}

enum ExamType{
  All('All Exam'),
  Upcoming('Upcoming'),
  Ongoing('Ongoing'),
  Completed('Completed');

  const ExamType(this.value);
  final String value;
}