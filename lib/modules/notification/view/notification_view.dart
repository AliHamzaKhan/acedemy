import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/size_config.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_dialogue.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';
import '../controller/notification_controller.dart';

class NotificationView extends StatelessWidget {
  NotificationView({super.key});

  var controller = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          appWithStyle(context, title: 'Notification'),
        ],
      ),
    ));
  }
}
