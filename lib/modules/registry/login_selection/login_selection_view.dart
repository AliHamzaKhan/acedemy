import 'package:acedemy/config/routes/app_routes.dart';
import 'package:acedemy/config/size_config.dart';
import 'package:acedemy/config/theme/app_colors.dart';
import 'package:acedemy/config/theme/app_gradient.dart';
import 'package:acedemy/widgets/app_button.dart';
import 'package:acedemy/widgets/app_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/app_key_contant.dart';
import '../../../widgets/app_scaffold.dart';
import '../controller/login_controller.dart';

class LoginSelectionView extends StatelessWidget {
  const LoginSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 1500),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 1
                // enlargeCenterPage: true,
              ),
              items: ['assets/vector/vector1.jpg','assets/vector/vector2.jpg' ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(i),
                            fit: BoxFit.contain
                          )
                        ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Container(
            height: Get.height * 0.5,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: setWidthValue(50)),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                gradient: appLinearGradient(),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                      setHeightValue(AppSizeConstant.kAppRadius)),
                  topLeft: Radius.circular(
                      setHeightValue(AppSizeConstant.kAppRadius)),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    AppTextBold(
                      text: 'eSchool - Virtual School Management System',
                      color: AppColors.background,
                      size: 30,
                      overFlow: TextOverflow.clip,
                      align: TextAlign.center,
                    ),
                    setHeight(15),
                    AppTextRegular(
                      text: 'eSchool serves you Virtual\nEducation at home',
                      color: AppColors.background,
                      overFlow: TextOverflow.clip,
                      align: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    AppButton(
                      title: 'Login as Student',
                      onTap: () {
                        Get.toNamed(AppRoutes.login,
                            arguments: {'loginType': LoginType.Student});
                      },
                      btnColor: AppColors.background,
                      isShadow: false,
                      width: Get.width,
                      height: 45,
                      radius: 10,
                      textColor: AppColors.primary,
                    ),
                    setHeight(15),
                    AppButton(
                      title: 'Login as Teacher',
                      onTap: () {
                        Get.toNamed(AppRoutes.login,
                            arguments: {'loginType': LoginType.Teacher});
                      },
                      btnColor: AppColors.primary,
                      isShadow: false,
                      isOutline: true,
                      width: Get.width,
                      height: 45,
                      radius: 10,
                      textColor: AppColors.background,
                      borderColor: AppColors.background,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
