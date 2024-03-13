import 'package:acedemy/widgets/app_text.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../config/size_config.dart';
import '../../../config/theme/app_colors.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/attendance_controller.dart';

class AttendanceView extends StatelessWidget {
  AttendanceView({super.key});

  var controller = Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: SingleChildScrollView(
        child: Column(
          children: [top(context), calendar(context), bottom()],
        ),
      ),
    ));
  }

  Widget top(context) {
    return appWithStyle(context,
        height: Get.height * 0.15,
        title: 'Attendance',
        trailing: const SizedBox(
          width: 30,
        ));
  }
  Widget calendar(context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      headerStyle: HeaderStyle(
          decoration: BoxDecoration(color: AppColors.background),
          titleCentered: true,
          titleTextStyle: appTextStyleBold(context, color: AppColors.primary),
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: AppColors.primary,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: AppColors.primary,
          ),
          formatButtonVisible: false,
          headerPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          headerMargin: const EdgeInsets.only(bottom: 10)),
      daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle:
          TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
          weekendStyle:
          TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold)),
      calendarStyle: CalendarStyle(
          selectedDecoration:
          BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
          todayDecoration:
          BoxDecoration(color: AppColors.primary, shape: BoxShape.circle)),
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          if (day.weekday == DateTime.sunday) {
            final text = DateFormat.E().format(day);
            return Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
        },
      ),
    );
  }
  Widget bottom() {
    var size = Get.width / 2.6;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: setHeightValue(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: FlexColor.greenDarkPrimaryVariant,
              borderRadius: BorderRadius.circular(setHeightValue(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextMedium(text: 'Total Present', color: Colors.white),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: AppTextBold(
                    text: '0',
                    color: FlexColor.greenDarkPrimaryVariant,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                color: FlexColor.redDarkPrimaryVariant,
                borderRadius: BorderRadius.circular(setHeightValue(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextMedium(text: 'Total Absent', color: Colors.white),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: AppTextBold(
                    text: '0',
                    color: FlexColor.redDarkPrimaryVariant,
                    size: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


}
