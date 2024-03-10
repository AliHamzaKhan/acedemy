


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/report_controller.dart';

class ReportView extends StatelessWidget {
  ReportView({super.key});

  var controller = Get.put(ReportController());
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Reports',
                  trailing: SizedBox(width: 30,)
              ),
            ],
          ),
        ));
  }
}
