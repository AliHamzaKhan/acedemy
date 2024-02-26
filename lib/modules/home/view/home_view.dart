import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/constant/assets_contant.dart';
import 'package:acedemy/utils/app_print.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../config/routes/app_routes.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../widgets/app_bottom_sheet.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_widgets.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var controller = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scaffoldKey: controller.scaffoldKey,
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            dashboard(context),
            topHeader(context),
            Obx(() => Align(
                alignment: Alignment.bottomCenter,
                child: AppBottomNav(
                  currentIndex: controller.currentIndex.value,
                  onChange: (index) {
                    controller.currentIndex(index);
                  },
                )))
          ],
        ),
      ),
      drawer: HomeDrawer(),
    );
  }

  topHeader(context) {
    return Container(
      height: Get.height * 0.20,
      width: Get.width,
      padding: EdgeInsets.all(setWidthValue(20)),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          gradient: appLinearGradient(),
          borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular(setHeightValue(AppSizeConstant.kAppRadius)),
              bottomRight:
                  Radius.circular(setHeightValue(AppSizeConstant.kAppRadius)))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              // controller.openDrawer();
              menuSheet(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AssetsConstant.kMenu,
                color: Theme.of(context).scaffoldBackgroundColor,
                width: 40,
                height: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: setHeightValue(60),
                height: setHeightValue(60),
                padding: EdgeInsets.all(setWidthValue(10)),
                margin: EdgeInsets.symmetric(horizontal: setWidthValue(30)),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: AppColors.background)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Image.asset(
                    AssetsConstant.kUsersFill,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              setWidth(20),
              titleSubTitleColumnText(
                  head: 'David Dany',
                  title: 'Class 9',
                  textSize: 18,
                  textColor: AppColors.background),
              setWidth(20),
              Expanded(
                child: titleSubTitleText(
                    head: 'Roll No',
                    title: '1',
                    textSize: 18,
                    textColor: AppColors.background),
              ),
              AppIconButton(
                icon: AssetsConstant.kNotification,
                onTap: () {
                  Get.toNamed(AppRoutes.notification);
                },
              )
            ],
          )
        ],
      ),
    );
  }

  dashboard(context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          top: Get.height * 0.21,
          left: setWidthValue(20),
          right: setWidthValue(20)),
      child: Column(
        children: [attendance(context), events(), subjects()],
      ),
    );
  }

  attendance(context) {
    return Column(
      children: [
        setHeight(10),
        seeAll(title: 'Attendance', onClick: () {}, showAll: false),
        // TableCalendar(
        //
        //   startingDayOfWeek: StartingDayOfWeek.monday,
        //   availableCalendarFormats: const {CalendarFormat.month: 'Month'},
        //   firstDay: DateTime.utc(2010, 10, 16),
        //   lastDay: DateTime.utc(2030, 3, 14),
        //   focusedDay: DateTime.now(),
        //   headerStyle: HeaderStyle(
        //     formatButtonVisible: false,
        //     formatButtonShowsNext: false,
        //     leftChevronVisible: false,
        //     rightChevronVisible: false,
        //     titleTextStyle: appTextStyleSemiBold(context),
        //   ),
        //   calendarStyle: CalendarStyle(
        //     todayDecoration: BoxDecoration(
        //       color: Colors.red,
        //       shape: BoxShape.circle,
        //     ),
        //     selectedDecoration: BoxDecoration(
        //       color: Colors.green,
        //       shape: BoxShape.circle,
        //     ),
        //   ),
        // )
        setHeight(10),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
            mainAxisExtent: 42
          ),
          itemCount: controller.daysInMonth(controller.currentDate.year, controller.currentDate.month),
          itemBuilder: (context, index) {
            DateTime day = DateTime(controller.currentDate.year, controller.currentDate.month, index + 1);
            bool isPresent = controller.attendanceData[day] ?? false;
            return GestureDetector(
              onTap: () {
                appDebugPrint("Selected date: $day");
              },
              child: Container(
                width: setHeightValue(30),
                height: setHeightValue(30),
                decoration: BoxDecoration(
                  // color: isPresent ? Colors.green : Colors.red,
                  color: index %2 == 0 ? Colors.greenAccent : Colors.redAccent,
                  shape: BoxShape.rectangle,
                ),
                alignment: Alignment.center,
                child: AppTextRegular(
                  text: '${index + 1}',
                  size: 12,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  subjects() {
    return Column(
      children: [
        setHeight(10),
        seeAll(title: 'My Subjects', onClick: () {}),
        setHeight(10),
      ],
    );
  }

  events() {
    return Column(
      children: [],
    );
  }
}


