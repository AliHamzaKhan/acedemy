import 'package:acedemy/config/enum/card_type.dart';
import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/time_table_controller.dart';

class TimeTableView extends StatelessWidget {
  TimeTableView({super.key});

  var controller = Get.put(TimeTableController());

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          top(context),
          setHeight(20),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: DaysEnum.values
                    .map((e) => DaysSelection(
                          daysEnum: e,
                          onSelected: (day) {
                            controller.selectedDay(day);
                          },
                          selectedDaysEnum: controller.selectedDay.value,
                        ))
                    .toList(),
              )),
          setHeight(20),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return AssignmentCard(
                    cardType: CardType.TimeTable,
                    onClick: () {},
                  );
                }),
          )
        ],
      ),
    ));
  }

  Widget top(context) {
    return Container(
      height: Get.height * 0.175,
      width: Get.width,
      child: Stack(
        children: [
          appWithStyle(context,
              height: Get.height * 0.15,
              title: 'TimeTable',
              trailing: const SizedBox(
                width: 30,
              )),
          Positioned(
            left: 30,
            right: 30,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: setHeightValue(15)),
              width: Get.width * 0.8,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: AppTextMedium(
                text: 'Class - 9 A Science',
                align: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
