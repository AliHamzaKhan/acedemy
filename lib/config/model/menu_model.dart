import 'package:acedemy/config/routes/app_routes.dart';
import 'package:acedemy/constant/assets_contant.dart';
import 'package:get/get.dart';

class MenuModel {
  int id;
  String title;
  String image;
  var onClick;
  String params;

  MenuModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.onClick,
      required this.params});
}

List<MenuModel> menus = <MenuModel>[
  MenuModel(
      id: 1,
      title: 'Attendance',
      image: AssetsConstant.kAttendance,
      onClick: () {
        Get.toNamed(AppRoutes.attendance);
      },
      params: ''),
  MenuModel(
      id: 1,
      title: 'Time Table',
      image: AssetsConstant.kTimeTable,
      onClick: (){
        Get.toNamed(AppRoutes.timeTable);
      },
      params: ''),
  MenuModel(
      id: 1,
      title: 'Notice Board',
      image: AssetsConstant.kNoticeBoard,
      onClick: (){
        Get.toNamed(AppRoutes.noticeBoard);
      },
      params: ''),
  MenuModel(
      id: 1,
      title: 'Exams',
      image: AssetsConstant.kExam,
      onClick: (){
        Get.toNamed(AppRoutes.exams);
      },
      params: ''),
  MenuModel(
      id: 1,
      title: 'Result',
      image: AssetsConstant.kResult,
      onClick: (){
        Get.toNamed(AppRoutes.result);
      },
      params: ''),
  MenuModel(
      id: 1,
      title: 'Report',
      image: AssetsConstant.kReport,
      onClick: (){
        Get.toNamed(AppRoutes.report);
      },
      params: ''),
  MenuModel(
      id: 1,
      title: 'Parent Profile',
      image: AssetsConstant.kParents,
      onClick: null,
      params: ''),
  MenuModel(
      id: 1,
      title: 'Holiday',
      image: AssetsConstant.kHoliday,
      onClick: null,
      params: ''),
  MenuModel(
      id: 1,
      title: 'Setting',
      image: AssetsConstant.kSetting,
      onClick: (){
        Get.toNamed(AppRoutes.setting);
      },
      params: ''),
];
