import 'package:flutter/material.dart';

import '../config/model/menu_model.dart';
import '../config/size_config.dart';
import 'app_text.dart';

class MenuCard extends StatelessWidget {
  MenuCard({super.key,required this.menuModel});

  MenuModel menuModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          menuModel.image,
          width: setHeightValue(60),
          height: setHeightValue(45),
          fit: BoxFit.contain,
        ),
        setHeight(10),
        AppTextRegular(
          text: menuModel.title,
          size: 14,
        )
      ],
    );
  }
}
