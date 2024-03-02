import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
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
          Container(
              height: Get.height * 0.10,
              width: Get.width,
              padding: EdgeInsets.all(setWidthValue(20)),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: appLinearGradient(),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          setHeightValue(AppSizeConstant.kAppRadius)),
                      bottomRight: Radius.circular(
                          setHeightValue(AppSizeConstant.kAppRadius)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        AssetsConstant.kBackArrowFill,
                        width: 30,
                        height: 30,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  AppTextBold(
                    text: 'Ali Hamza',
                    size: 25,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  GestureDetector(
                    onTap: (){
                      showUserProfileDialogue(context);
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(setHeightValue(50)),
                        child: Image.asset(
                          'assets/vector/image.png',
                          width: setHeightValue(50),
                          height: setHeightValue(50),
                        )),
                  ),
                ],
              )),
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
