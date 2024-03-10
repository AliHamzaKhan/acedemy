import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/holiday_controller.dart';

class HolidayView extends StatelessWidget {
  HolidayView({super.key});

  var controller = Get.put(HolidayController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Holidays',
                  trailing: SizedBox(width: 30,)
              ),
            ],
          ),
        ));
  }
}
