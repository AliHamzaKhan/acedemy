


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var currentIndex = 0.obs;
  DateTime currentDate = DateTime.now();
  Map<DateTime, bool> attendanceData = {};


  int daysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  }
  bool notAvailableDate(){
    return currentDate.isAfter(DateTime.now().subtract(const Duration(days: 1)));
  }

}