import 'package:acedemy/modules/chat/view/active_chat_view.dart';
import 'package:acedemy/modules/chat/view/chat_list_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../modules/attendance/view/attendence_view.dart';
import '../../modules/exams/view/exams_view.dart';
import '../../modules/holiday/view/holiday_view.dart';
import '../../modules/home/view/home_view.dart';
import '../../modules/notice_board/view/notice_board_view.dart';
import '../../modules/notification/view/notification_view.dart';
import '../../modules/profile/view/profile_view.dart';
import '../../modules/registry/login/login_view.dart';
import '../../modules/registry/login_selection/login_selection_view.dart';
import '../../modules/registry/signup/signup_view.dart';
import '../../modules/report/view/report_view.dart';
import '../../modules/result/view/result_list_view.dart';
import '../../modules/setting/view/setting_view.dart';
import '../../modules/splash/view/splash_view.dart';
import '../../modules/time_table/view/time_table_view.dart';
import '../routes/app_routes.dart';

final List<GetPage>publicPages = [
  GetPage(name: AppRoutes.splash, page: () => SplashView()),
  GetPage(name: AppRoutes.loginSelection, page: () => LoginSelectionView()),
  GetPage(name: AppRoutes.login, page: () => LoginView()),
  GetPage(name: AppRoutes.signup, page: () => SignupView()),
  GetPage(name: AppRoutes.home, page: () => HomeView()),
  GetPage(name: AppRoutes.notification, page: () => NotificationView()),
  GetPage(name: AppRoutes.profile, page: () => ProfileView()),
  GetPage(name: AppRoutes.chatList, page: () => ChatListView()),
  GetPage(name: AppRoutes.chatList, page: () => ChatListView()),
  GetPage(name: AppRoutes.chat, page: () => ActiveChatView()),
  GetPage(name: AppRoutes.attendance, page: () => AttendanceView()),
  GetPage(name: AppRoutes.timeTable, page: () => TimeTableView()),
  GetPage(name: AppRoutes.noticeBoard, page: () => NoticeBoardView()),
  GetPage(name: AppRoutes.exams, page: () => ExamsView()),
  GetPage(name: AppRoutes.resultList, page: () => ResultListView()),
  GetPage(name: AppRoutes.setting, page: () => SettingView()),
  GetPage(name: AppRoutes.report, page: () => ReportView()),
  GetPage(name: AppRoutes.holiday, page: () => HolidayView()),
];
