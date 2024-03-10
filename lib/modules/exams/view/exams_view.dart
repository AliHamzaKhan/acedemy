


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/exmas_controller.dart';

class ExamsView extends StatelessWidget {
  ExamsView({super.key});

  var controller = Get.put(ExamsController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Exams',
                  trailing: SizedBox(width: 30,)
              ),
            ],
          ),
        ));
  }
}
