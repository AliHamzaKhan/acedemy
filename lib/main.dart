import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'config/pages/app_pages.dart';
import 'config/services/theme_management_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if(kDebugMode) HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Karachi Education',
      theme: appDefaultTheme,
      darkTheme: appDarkDefaultTheme,
      themeMode: globalThemeMode.value,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
      navigatorKey: Get.key,
      // unknownRoute: GetPage(
      //   name: AppRoutes.notFound,
      //   page: () => const NotFoundView(),
      // ),
      // home: HomeView(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}
