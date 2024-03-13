import 'package:get/get.dart';

class AttendanceController extends GetxController {

  Rx<MonthsEnum> selectedMonth = MonthsEnum.January.obs;
}

enum MonthsEnum {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December,
}
