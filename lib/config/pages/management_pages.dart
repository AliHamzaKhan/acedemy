import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../modules/splash/view/splash_view.dart';
import '../routes/app_routes.dart';

final pages = [
  GetPage(name: AppRoutes.splash, page: () => SplashView()),
];
