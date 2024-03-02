


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var currentIndex = 0.obs;

  late PageController pageController;
  DateTime currentDate = DateTime.now();
  Map<DateTime, bool> attendanceData = {};


  int daysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  }
  bool notAvailableDate(){
    return currentDate.isAfter(DateTime.now().subtract(const Duration(days: 1)));
  }

  movePage(int index){
    pageController.jumpToPage(index);
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex.value);
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}

enum BottomItemEnum{
  Home,
  Chat,
  Assignment
}