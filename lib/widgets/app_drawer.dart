


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.8,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(),
    );
  }
}


