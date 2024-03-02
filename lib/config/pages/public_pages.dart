import 'package:acedemy/modules/chat/view/active_chat_view.dart';
import 'package:acedemy/modules/chat/view/chat_list_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../modules/home/view/home_view.dart';
import '../../modules/notification/notification_view.dart';
import '../../modules/profile/view/profile_view.dart';
import '../../modules/registry/login/login_view.dart';
import '../../modules/registry/login_selection/login_selection_view.dart';
import '../../modules/registry/signup/signup_view.dart';
import '../../modules/splash/view/splash_view.dart';
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
];
