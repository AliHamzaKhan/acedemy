import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/notice_board_controller.dart';

class NoticeBoardView extends StatelessWidget {
  NoticeBoardView({super.key});

  var controller = Get.put(NoticeBoardController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          appWithStyle(context,
              title: 'Notice Board',
              trailing: const SizedBox(
                width: 30,
              )),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
              return NoticeBoardCard();
            }),
          )
        ],
      ),
    ));
  }
}
