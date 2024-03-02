import 'package:acedemy/config/pages/public_pages.dart';
import 'package:acedemy/config/pages/student_pages.dart';
import 'package:acedemy/config/pages/teacher_pages.dart';
import 'package:acedemy/config/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {

  static const initial = AppRoutes.splash;
  static final List<GetPage> pages = [
    ...publicPages,
    ...studentPages,
    ...teacherPages
  ];
}
