import 'package:acedemy/constant/assets_contant.dart';

class MenuModel {
  int id;
  String title;
  String image;
  var onClick;
  String params;

  MenuModel({
      required this.id,
      required this.title,
      required this.image,
      required this.onClick,
      required this.params});
}
List<MenuModel> menus = <MenuModel>[
  MenuModel(id: 1, title: 'Attendance', image: AssetsConstant.kAttendance, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Time Table', image: AssetsConstant.kTimeTable, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Notice Board', image: AssetsConstant.kNoticeBoard, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Exams', image: AssetsConstant.kExam, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Result', image: AssetsConstant.kResult, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Report', image: AssetsConstant.kReport, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Parent Profile', image: AssetsConstant.kParents, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Holiday', image: AssetsConstant.kHoliday, onClick: null, params: ''),
  MenuModel(id: 1, title: 'Setting', image: AssetsConstant.kSetting, onClick: null, params: ''),
];
