import 'package:get/get.dart';

class TimeTableController extends GetxController {

  Rx<DaysEnum> selectedDay = DaysEnum.Mon.obs;

}

enum DaysEnum { Mon, Tue, Web, Thu, Fri, Sat, Sun }
