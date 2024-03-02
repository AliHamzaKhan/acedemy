import 'package:acedemy/modules/assignment/view/assignment_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../routes/app_routes.dart';

final List<GetPage> studentPages = [
  GetPage(name: AppRoutes.assignment, page: () => AssignmentView()),
];
