import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../config/enum/card_type.dart';
import '../../../config/size_config.dart';
import '../../../widgets/app_appbar.dart';
import '../../../widgets/app_cards.dart';
import '../../../widgets/app_scaffold.dart';
import '../../../widgets/app_text.dart';

class ExamTimeTable extends StatelessWidget {
  const ExamTimeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: SizedBox(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Stack(
            children: [
              appWithStyle(context,
                  title: 'Exam Time Table',
                  height: Get.height * 0.18,
                  trailing: setWidth(30),
                  crossAxisAlignment: CrossAxisAlignment.start,
                  padding: EdgeInsets.symmetric(
                      horizontal: setWidthValue(20),
                      vertical: setHeightValue(50)),
                  margin: EdgeInsets.only(bottom: setHeightValue(20))),
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
                    text: 'Mid Year',
                    align: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return AssignmentCard(
                    cardType: CardType.Exam,
                    onClick: () {},
                  );
                }),
          )
        ],
      ),
    ));
  }
}
