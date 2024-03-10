


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/attendance_controller.dart';

class AttendanceView extends StatelessWidget {
  AttendanceView({super.key});

  var controller = Get.put(AttendanceController());
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Attendance',
                  trailing: SizedBox(width: 30,)
              ),
            ],
          ),
        ));
  }
}
