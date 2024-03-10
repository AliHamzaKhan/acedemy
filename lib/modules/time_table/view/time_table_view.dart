


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/time_table_controller.dart';

class TimeTableView extends StatelessWidget {
  TimeTableView({super.key});

  var controller = Get.put(TimeTableController());
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Time Table',
                  trailing: SizedBox(width: 30,)
              ),
            ],
          ),
        ));
  }
}
