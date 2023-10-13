import 'controller/setting_preference_tab_container_controller.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/setting_edit_profile_page/setting_edit_profile_page.dart';
import 'package:bank_templates/presentation/setting_preference_page/setting_preference_page.dart';
import 'package:bank_templates/presentation/setting_security_page/setting_security_page.dart';
import 'package:bank_templates/widgets/app_bar/appbar_circleimage.dart';
import 'package:bank_templates/widgets/app_bar/appbar_image.dart';
import 'package:bank_templates/widgets/app_bar/appbar_searchview.dart';
import 'package:bank_templates/widgets/app_bar/appbar_title.dart';
import 'package:bank_templates/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingPreferenceTabContainerScreen
    extends GetWidget<SettingPreferenceTabContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray10003,
        appBar: CustomAppBar(
          height: getVerticalSize(
            122,
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppbarImage(
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(
                      top: 5,
                      bottom: 6,
                    ),
                  ),
                  AppbarTitle(
                    text: "lbl_setting".tr,
                    margin: getMargin(
                      left: 104,
                      top: 6,
                      bottom: 3,
                    ),
                  ),
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgEllipse3735x35,
                    margin: getMargin(
                      left: 94,
                    ),
                  ),
                ],
              ),
              Obx(
                () => AppbarSearchview(
                  margin: getMargin(
                    top: 20,
                  ),
                  hintText: "msg_search_for_some".tr,
                  controller: controller.group420Controller,
                ),
              ),
            ],
          ),
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: getHorizontalSize(
            327,
          ),
          margin: getMargin(
            left: 24,
            top: 46,
            right: 24,
            bottom: 5,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  24,
                ),
                width: getHorizontalSize(
                  285,
                ),
                child: TabBar(
                  controller: controller.group744Controller,
                  labelColor: ColorConstant.indigo600,
                  labelStyle: TextStyle(
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: ColorConstant.blueGray400,
                  unselectedLabelStyle: TextStyle(
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: ColorConstant.indigo600,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_edit_profile".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_preference".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_security".tr,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  418,
                ),
                child: TabBarView(
                  controller: controller.group744Controller,
                  children: [
                    SettingEditProfilePage(),
                    SettingPreferencePage(),
                    SettingSecurityPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
