import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_dialogue.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/app_widgets.dart';
import '../controller/chat_controller.dart';

class ActiveChatView extends StatelessWidget {
  ActiveChatView({super.key});

  var controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    controller.getParams();
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [

          appWithStyle(context, title: 'Ali Hamza'),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return MessageCard(
                    isUser: index % 2 == 0,
                  );
                }),
          ),
          ChatFooter(
            onChange: (value){},
            onClick: (){},
          )
        ],
      ),
    ));
  }
}
