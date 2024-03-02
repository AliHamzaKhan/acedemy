import 'package:acedemy/config/routes/app_routes.dart';
import 'package:acedemy/constant/assets_contant.dart';
import 'package:get/get.dart';

class HomeNavModel {
  int index;
  String title;
  String image;
  String selectedImage;
  var onCick;

  HomeNavModel(
      {required this.index,
      required this.title,
      required this.image,
      required this.selectedImage,
      required this.onCick});
}

List<HomeNavModel> bottomNavItems = <HomeNavModel>[
  HomeNavModel(
      index: 1, title: 'Home',
      image: AssetsConstant.kHome,
      selectedImage: AssetsConstant.kHomeFill,
      onCick: () {}),
  HomeNavModel(
      index: 2,
      title: 'Assignment',
      image: AssetsConstant.kUsers,
      selectedImage: AssetsConstant.kUsersFill,
      onCick: () {
        Get.toNamed(AppRoutes.assignment);
      }),
  HomeNavModel(
      index: 3, title: 'Chat',
      image: AssetsConstant.kChat,
      selectedImage: AssetsConstant.kChatFill,
      onCick: () {}),
];
