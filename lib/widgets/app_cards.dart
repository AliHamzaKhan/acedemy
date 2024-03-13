import 'package:acedemy/config/services/auth_service.dart';
import 'package:acedemy/constant/assets_contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/enum/card_type.dart';
import '../config/model/event_model.dart';
import '../config/model/menu_model.dart';
import '../config/model/subject_model.dart';
import '../config/size_config.dart';
import '../config/theme/app_colors.dart';
import '../constant/app_key_contant.dart';
import '../modules/exams/controller/exmas_controller.dart';
import '../modules/time_table/controller/time_table_controller.dart';
import 'app_text.dart';

class MenuCard extends StatelessWidget {
  MenuCard({super.key, required this.menuModel});

  MenuModel menuModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();

        if (menuModel.onClick != null) {
          menuModel.onClick();
        }
      },
      child: Column(
        children: [
          Image.asset(
            menuModel.image,
            width: setHeightValue(60),
            height: setHeightValue(45),
            fit: BoxFit.contain,
          ),
          setHeight(10),
          AppTextRegular(
            text: menuModel.title,
            size: 14,
          )
        ],
      ),
    );
  }
}

class SubjectsCard extends StatelessWidget {
  SubjectsCard({super.key, required this.subjectModel, this.onClick});

  SubjectModel subjectModel;
  var onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: setHeightValue(110),
        height: setHeightValue(110),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: setHeightValue(70),
              height: setHeightValue(70),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppSizeConstant.kCardRadius),
                  image: DecorationImage(
                      image: AssetImage(subjectModel.image),
                      fit: BoxFit.contain)),
            ),
            setHeight(10),
            Expanded(
                child: AppTextBold(
              text: subjectModel.title,
              size: setHeightValue(12),
            ))
          ],
        ),
      ),
    );
  }
}

class EventsCard extends StatelessWidget {
  EventsCard({super.key, required this.model, this.onClick});

  EventModel model;
  var onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: Get.width,
        margin: EdgeInsets.all(setHeightValue(10)),
        padding: EdgeInsets.all(setHeightValue(10)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                setHeightValue(AppSizeConstant.kCardRadius)),
            border: Border.all(color: AppColors.borderColor)),
        child: Stack(
          children: [
            AppTextRegular(
              text: model.title,
              size: 15,
            ),
            Center(
              child: Row(
                children: [
                  Expanded(
                      child: AppTextRegular(
                    text: model.description,
                    size: 15,
                    overFlow: TextOverflow.clip,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      model.image,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: AppTextRegular(
                  text: model.date,
                  size: 15,
                )),
          ],
        ),
      ),
    );
  }
}

class ChatListCard extends StatelessWidget {
  ChatListCard({super.key, this.onClick, this.isRead = false});

  double imageSize = 70;
  var onClick;

  bool isRead;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: Get.width,
        margin: EdgeInsets.symmetric(
            horizontal: setWidthValue(30), vertical: setHeightValue(10)),
        padding: EdgeInsets.all(setHeightValue(10)),
        decoration: BoxDecoration(
          color: isRead
              ? Theme.of(context).scaffoldBackgroundColor
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(
              setHeightValue(AppSizeConstant.kCardRadius)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(setHeightValue(imageSize)),
                child: Image.asset(
                  'assets/vector/image.png',
                  width: setHeightValue(imageSize),
                  height: setHeightValue(imageSize),
                )),
            setWidth(10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextBold(
                    text: 'Ali Hamza',
                    size: 18,
                  ),
                  setHeight(5),
                  AppTextExtraLight(
                    text: 'this is testing text for chatting',
                    size: 14,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppTextBold(text: '04 Jan'),
                Container(
                  padding: EdgeInsets.all(setHeightValue(7)),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle),
                  child: AppTextBold(
                    text: '1',
                    color: Theme.of(context).scaffoldBackgroundColor,
                    size: 10,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  MessageCard({super.key, this.isUser = true});

  bool isUser;
  double borderRadius = 10;

  @override
  Widget build(BuildContext context) {
    // var isUser = AuthCredentials().getId();
    return isUser ? userCard(context) : clientCard(context);
  }

  userCard(context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IntrinsicWidth(
        child: Container(
          margin: EdgeInsets.only(
              top: setHeightValue(10),
              left: setWidthValue(120),
              right: setWidthValue(30)),
          padding: EdgeInsets.symmetric(
              horizontal: setWidthValue(30), vertical: setHeightValue(10)),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(setHeightValue(borderRadius)),
                topRight: Radius.circular(setHeightValue(0)),
                bottomRight: Radius.circular(setHeightValue(borderRadius)),
                bottomLeft: Radius.circular(setHeightValue(borderRadius)),
              )),
          alignment: Alignment.centerRight,
          child: Column(
            children: [
              AppTextExtraLight(
                text:
                    'this is testing text for chatting list this is testing text for chatting list',
                color: AppColors.background,
                overFlow: TextOverflow.clip,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: AppTextBold(
                    text: '25-12-21',
                    color: AppColors.background,
                  ))
            ],
          ),
        ),
      ),
    );
  }

  clientCard(context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IntrinsicWidth(
        child: Container(
          margin: EdgeInsets.only(
              top: setHeightValue(10),
              left: setWidthValue(30),
              right: setWidthValue(120)),
          padding: EdgeInsets.symmetric(
              horizontal: setWidthValue(30), vertical: setHeightValue(10)),
          decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(setHeightValue(0)),
                topRight: Radius.circular(setHeightValue(borderRadius)),
                bottomRight: Radius.circular(setHeightValue(borderRadius)),
                bottomLeft: Radius.circular(setHeightValue(borderRadius)),
              )),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              AppTextExtraLight(
                text: 'this is testing text for chatting list',
                overFlow: TextOverflow.clip,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: AppTextBold(
                    text: '25-12-21',
                    color: AppColors.background,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class AssignmentCard extends StatelessWidget {
  AssignmentCard(
      {super.key,
      this.onClick,
      this.isSubmitted = false,
      this.cardType = CardType.Assignment});

  var onClick;
  bool isSubmitted;

  CardType cardType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: setWidthValue(30), vertical: setHeightValue(10)),
        margin: EdgeInsets.all(setHeightValue(10)),
        decoration: BoxDecoration(
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(AppSizeConstant.kCardRadius)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: setHeightValue(70),
              height: setHeightValue(70),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppSizeConstant.kCardRadius),
                  image: DecorationImage(
                      image: AssetImage(AssetsConstant.kEnglish),
                      fit: BoxFit.contain)),
            ),
            setWidth(10),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child:
                              AppTextBold(text: 'Drawing Of Nature', size: 18)),
                      if (isSubmitted) ...[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: setWidthValue(20),
                              vertical: setHeightValue(5)),
                          margin: EdgeInsets.symmetric(
                              horizontal: setWidthValue(5)),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius:
                                  BorderRadius.circular(setHeightValue(5))),
                          child: AppTextBold(
                            text: 'Accepted',
                            color: Theme.of(context).scaffoldBackgroundColor,
                            size: 12,
                          ),
                        )
                      ] else ...[
                        if(cardType == CardType.Assignment)
                        AppTextRegular(
                          text: '22-08-22',
                          size: 14,
                        )
                      ]
                    ],
                  ),
                  setHeight(5),
                  AppTextRegular(
                    text: 'Drawing',
                    size: 14,
                  ),
                  setHeight(15),
                  if(cardType == CardType.Assignment)...[
                    AppTextBold(
                      text: 'Due 22, March 2024, 01:29 AM',
                      size: 14,
                    )
                  ],
                  if(cardType == CardType.TimeTable)...[
                    AppTextRegular(
                      text: 'Teacher Demo',
                      size: 14,
                    ),
                  ]

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MultiTextCard extends StatelessWidget {
  MultiTextCard({super.key, required this.head, required this.text});

  String head;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.all(setHeightValue(10)),
      padding: EdgeInsets.all(setHeightValue(20)),
      decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(AppSizeConstant.kCardRadius)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleSubTitleColumnText(
              head: head,
              title: text,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              textSize: 18,
              headSize: 14),
        ],
      ),
    );
  }
}

class SubjectSelectionButton extends StatelessWidget {
  SubjectSelectionButton(
      {super.key,
      required this.element,
      required this.onSubjectSelected,
      required this.selectedSubject});

  SubjectModel element;

  var onSubjectSelected;

  SubjectModel selectedSubject;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSubjectSelected(element);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: setWidthValue(30), vertical: setHeightValue(7)),
        margin: EdgeInsets.symmetric(horizontal: setWidthValue(5)),
        decoration: BoxDecoration(
            color: selectedSubject.title == element.title
                ? Theme.of(context).primaryColor
                : AppColors.cardColor,
            borderRadius: BorderRadius.circular(setHeightValue(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (element.image != '')
              Image.asset(
                element.image,
                width: setHeightValue(15),
                height: setHeightValue(15),
                // color: controller.selectedSubject.value.title == element.title
                //     ? Theme.of(context).scaffoldBackgroundColor
                //     : Theme.of(context).primaryColor,
              ),
            setWidth(5),
            AppTextBold(
              text: element.title,
              color: selectedSubject.title == element.title
                  ? Theme.of(context).scaffoldBackgroundColor
                  : Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}

class DaysSelection extends StatelessWidget {
  DaysSelection(
      {super.key,
      required this.daysEnum,
      required this.onSelected,
      required this.selectedDaysEnum});

  DaysEnum daysEnum;
  DaysEnum selectedDaysEnum;
  Function(DaysEnum) onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(daysEnum);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: setWidthValue(30), vertical: setHeightValue(7)),
        decoration: BoxDecoration(
            color: selectedDaysEnum == daysEnum
                ? Theme.of(context).primaryColor
                : AppColors.cardColor,
            borderRadius: BorderRadius.circular(setHeightValue(5))),
        child: AppTextBold(
          text: daysEnum.name,
          color: selectedDaysEnum == daysEnum
              ? Theme.of(context).scaffoldBackgroundColor
              : Theme.of(context).primaryColor,
          size: 14,
        ),
      ),
    );
  }
}

class NoticeBoardCard extends StatelessWidget {
  NoticeBoardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: setWidthValue(30),
          vertical: setHeightValue(20)
      ),
      margin: EdgeInsets.symmetric(
        horizontal: setWidthValue(30),
        vertical: setHeightValue(10)
      ),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(setHeightValue(10))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextMedium(text: 'Holiday', size: 16,),
          AppTextRegular(text: 'Due to bad weather', size: 14,),
          AppTextExtraLight(text: '7 month ago', size: 13,),
        ],
      ),
    );
  }
}


class ExamFilterSelection extends StatelessWidget {
  ExamFilterSelection(
      {super.key,
        required this.examEnum,
        required this.onSelected,
        required this.selectedExamEnum});

  ExamType examEnum;
  ExamType selectedExamEnum;
  Function(ExamType) onSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSelected(examEnum);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: setWidthValue(30), vertical: setHeightValue(7)),
        decoration: BoxDecoration(
            color: selectedExamEnum == examEnum
                ? Theme.of(context).primaryColor
                : AppColors.cardColor,
            borderRadius: BorderRadius.circular(setHeightValue(5))),
        child: AppTextBold(
          text: examEnum.name,
          color: selectedExamEnum == examEnum
              ? Theme.of(context).scaffoldBackgroundColor
              : Theme.of(context).primaryColor,
          size: 14,
        ),
      ),
    );
  }
}


