import 'package:acedemy/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../constant/assets_contant.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';
import '../controller/chat_controller.dart';

class ChatListView extends StatelessWidget {
  ChatListView({super.key});

  var controller = Get.put(ChatController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Container(
              height: Get.height * 0.15,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  setHeight(Get.height * 0.05),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      AppTextBold(
                        text: 'Chats',
                        size: 25,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            AssetsConstant.kSearch,
                            width: 30,
                            height: 30,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ChatListCard(
                    onClick: () {
                      Get.toNamed(
                        AppRoutes.kChatWithUser('1'),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    ));
  }
}
