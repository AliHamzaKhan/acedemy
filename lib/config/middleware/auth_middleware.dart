


import 'package:acedemy/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_key_contant.dart';
import '../storage/data_store_service.dart';

class PublicAuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  bool isAuthenticated = false;

  @override
  RouteSettings? redirect(String? route) {
    String token = dataStore.getString(AppKeyConstant.kToken);

    if (token != "") {
      return const RouteSettings(name: AppRoutes.dashboard);
    }
    return super.redirect(route);
  }
}
