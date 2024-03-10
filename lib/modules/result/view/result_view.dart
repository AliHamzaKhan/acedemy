


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/result_controller.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key});

  var controller = Get.put(ResultController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              appWithStyle(context,
                  title: 'Result',
                  trailing: SizedBox(width: 30,)
              ),
            ],
          ),
        ));
  }
}
