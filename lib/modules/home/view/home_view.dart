import 'package:acedemy/config/demo/demo_content.dart';
import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/constant/assets_contant.dart';
import 'package:acedemy/modules/assignment/view/assignment_view.dart';
import 'package:acedemy/modules/chat/view/chat_list_view.dart';
import 'package:acedemy/utils/app_print.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/routes/app_routes.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../constant/app_key_contant.dart';
import '../../../widgets/app_bottom_sheet.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_cards.dart';
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
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(
          children: [
            // dashboard(context),
            pages(context),
            Obx(() => Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: AppBottomNav(
                    currentIndex: controller.currentIndex.value,
                    onChange: (index) {
                      // if(index == 1){
                      //   Get.toNamed(AppRoutes.assignment);
                      // }
                      controller.currentIndex(index);
                      controller.movePage(controller.currentIndex.value);
                    },
                  ),
                )))
          ],
        ),
      ),
      drawer: HomeDrawer(),
    );
  }

  pages(context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        controller.currentIndex.value = index;
      },
      controller: controller.pageController,
      children: [dashboard(context), AssignmentView(), ChatListView()],
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
              padding: const EdgeInsets.all(0),
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
    return Column(
      children: [
        topHeader(context),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: Get.height * 0.10,
                left: setWidthValue(20),
                right: setWidthValue(20)),
            child: Column(
              children: [
                attendance(context),
                events(),
                subjects(context),
                setHeight(100)
              ],
            ),
          ),
        ),
      ],
    );
  }

  attendance(context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(setHeightValue(20)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizeConstant.kCardRadius),
            // border: Border.all(color: AppColors.borderColor)
          ),
          child: Stack(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                    mainAxisExtent: 42),
                itemCount: controller.daysInMonth(
                    controller.currentDate.year, controller.currentDate.month),
                itemBuilder: (context, index) {
                  DateTime day = DateTime(controller.currentDate.year,
                      controller.currentDate.month, index + 1);
                  bool isPresent = controller.attendanceData[day] ?? false;
                  return GestureDetector(
                    onTap: () {
                      appDebugPrint("Selected date: $day");
                    },
                    child: Container(
                      width: setHeightValue(30),
                      height: setHeightValue(30),
                      decoration: BoxDecoration(
                        // color: isPresent ? presentColor : absentColor,
                        color: index % 2 == 0 ? presentColor : absentColor,
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
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: absentColor,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        setWidth(5),
                        AppTextRegular(
                          text: 'Absent',
                          size: 12,
                        )
                      ],
                    ),
                    setWidth(10),
                    Row(
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              color: presentColor,
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        setWidth(5),
                        AppTextRegular(
                          text: 'Present',
                          size: 12,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  subjects(context) {
    return Column(
      children: [
        seeAll(
            title: 'My Subjects',
            onClick: () {
              showSubjectSheet(context);
            }),
        SizedBox(
          width: Get.width,
          height: setHeightValue(120),
          child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount:
                  demoSubjectList.length > 5 ? 5 : demoSubjectList.length,
              itemBuilder: (context, index) {
                return SubjectsCard(
                  text: demoSubjectList[index],
                  onClick: () {},
                );
              }),
        ),
        setHeight(10),
      ],
    );
  }

  events() {
    double height = setHeightValue(200);
    return CarouselSlider(
      options: CarouselOptions(
          height: height,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(milliseconds: 3000),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          viewportFraction: 1
          // enlargeCenterPage: true,
          ),
      items: demoEventList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return EventsCard(
              model: i,
            );
          },
        );
      }).toList(),
    );
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: demoEventList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return EventsCard(
              model: demoEventList[index],
            );
          }),
    );
  }
}
