import 'package:acedemy/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_text.dart';

void showUserProfileDialogue(context) {
  Dialog errorDialog = Dialog(
    insetPadding: EdgeInsets.all(setHeightValue(20)),
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
    child: Container(
      height: Get.height * 0.5,
      width: Get.width * 0.8,
      padding: EdgeInsets.only(
        left: setHeightValue(20),
        right: setHeightValue(10),
        top: setHeightValue(20),
        bottom: setHeightValue(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(setHeightValue(50)),
                  child: Image.asset(
                    'assets/vector/image.png',
                    width: setHeightValue(50),
                    height: setHeightValue(50),
                  )),
              setWidth(5),
              AppTextBold(
                text: 'Ali Hamza',
                size: 25,
                color: Theme.of(context).primaryColor,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.close, color: Theme.of(context).textSelectionTheme.cursorColor,),
                constraints: const BoxConstraints(),
                padding: EdgeInsets.all(setHeightValue(5)),
              )
            ],
          ),

        ],
      ),
    ),
  );
  showDialog(context: context, builder: (BuildContext context) => errorDialog);
}
