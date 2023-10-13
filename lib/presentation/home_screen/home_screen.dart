import '../home_screen/widgets/listbalance_item_widget.dart';
import '../home_screen/widgets/listvideocamera_item_widget.dart';
import '../side_menu_draweritem/controller/side_menu_controller.dart';
import '../side_menu_draweritem/side_menu_draweritem.dart';
import 'controller/home_controller.dart';
import 'models/listbalance_item_model.dart';
import 'models/listvideocamera_item_model.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/app_bar/appbar_circleimage.dart';
import 'package:bank_templates/widgets/app_bar/appbar_image.dart';
import 'package:bank_templates/widgets/app_bar/appbar_searchview.dart';
import 'package:bank_templates/widgets/app_bar/appbar_title.dart';
import 'package:bank_templates/widgets/app_bar/custom_app_bar.dart';
import 'package:bank_templates/widgets/custom_button.dart';
import 'package:bank_templates/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: ColorConstant.gray100,
            drawer: SideMenuDraweritem(SideMenuController()),
            appBar: CustomAppBar(
                height: getVerticalSize(122),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath: ImageConstant.imgMenu,
                            margin: getMargin(top: 5, bottom: 6),
                            onTap: () {
                              onTapMenu();
                            }),
                        AppbarTitle(
                            text: "lbl_overview".tr,
                            margin: getMargin(left: 93, top: 3, bottom: 6)),
                        AppbarCircleimage(
                            imagePath: ImageConstant.imgEllipse3735x35,
                            margin: getMargin(left: 82))
                      ]),
                      Obx(() => AppbarSearchview(
                          margin: getMargin(top: 20),
                          hintText: "msg_search_for_some".tr,
                          controller: controller.group420Controller))
                    ]),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_my_cards".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterSemiBold16),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeAll();
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("lbl_see_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterSemiBold14)))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(184),
                                      child: Obx(() => ListView.separated(
                                          padding: getPadding(top: 14),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(20));
                                          },
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listbalanceItemList
                                              .value
                                              .length,
                                          itemBuilder: (context, index) {
                                            ListbalanceItemModel model =
                                                controller
                                                    .homeModelObj
                                                    .value
                                                    .listbalanceItemList
                                                    .value[index];
                                            return ListbalanceItemWidget(model);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("msg_recent_transact".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  margin: getMargin(top: 16, right: 24),
                                  padding: getPadding(
                                      left: 19, top: 20, right: 19, bottom: 20),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(12));
                                      },
                                      itemCount: controller.homeModelObj.value
                                          .listvideocameraItemList.value.length,
                                      itemBuilder: (context, index) {
                                        ListvideocameraItemModel model =
                                            controller
                                                .homeModelObj
                                                .value
                                                .listvideocameraItemList
                                                .value[index];
                                        return ListvideocameraItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("lbl_weekly_activity".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  margin: getMargin(top: 14, right: 24),
                                  padding: getPadding(
                                      left: 18, top: 16, right: 18, bottom: 16),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                      height: getSize(12),
                                                      width: getSize(12),
                                                      margin: getMargin(
                                                          top: 1, bottom: 2),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      6)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10, top: 1),
                                                      child: Text(
                                                          "lbl_diposit".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Container(
                                                      height: getSize(12),
                                                      width: getSize(12),
                                                      margin: getMargin(
                                                          left: 28,
                                                          top: 1,
                                                          bottom: 2),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo600,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      6)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10, bottom: 1),
                                                      child: Text(
                                                          "lbl_withdraw".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12))
                                                ])),
                                        Padding(
                                            padding: getPadding(right: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          bottom: 24),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("lbl_500".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            18),
                                                                child: Text(
                                                                    "lbl_400"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            17),
                                                                child: Text(
                                                                    "lbl_300"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            18),
                                                                child: Text(
                                                                    "lbl_200"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12)),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                18),
                                                                    child: Text(
                                                                        "lbl_100"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 18,
                                                                        right:
                                                                            3),
                                                                    child: Text(
                                                                        "lbl_06"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterRegular12)))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(193),
                                                      width: getHorizontalSize(
                                                          259),
                                                      margin: getMargin(
                                                          left: 6, top: 10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup438,
                                                                height:
                                                                    getVerticalSize(
                                                                        166),
                                                                width:
                                                                    getHorizontalSize(
                                                                        259),
                                                                alignment: Alignment
                                                                    .topCenter),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgGroup27Indigo600,
                                                                                height: getVerticalSize(161),
                                                                                width: getHorizontalSize(19)),
                                                                            Padding(
                                                                                padding: getPadding(top: 13),
                                                                                child: Text("lbl_sat".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                          ]),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  47),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27Indigo600, height: getVerticalSize(114), width: getHorizontalSize(19)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_sun".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  49),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27Indigo600, height: getVerticalSize(112), width: getHorizontalSize(19)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_mon".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27Indigo600, height: getVerticalSize(161), width: getHorizontalSize(19)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_tue".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  84),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27, height: getVerticalSize(77), width: getHorizontalSize(19)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_wed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  26),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27Indigo600, height: getVerticalSize(135), width: getHorizontalSize(19)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_thu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  30),
                                                                          child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGroup27Indigo600, height: getVerticalSize(131), width: getHorizontalSize(19)),
                                                                                Padding(padding: getPadding(top: 13), child: Text("lbl_fri".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                              ]))
                                                                    ]))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 2, top: 24),
                                  child: Text("msg_expense_statist".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(left: 2, top: 14),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Container(
                                      height: getVerticalSize(240),
                                      width: getHorizontalSize(327),
                                      padding: getPadding(
                                          left: 62,
                                          top: 22,
                                          right: 62,
                                          bottom: 22),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                    margin: getMargin(left: 15),
                                                    padding: getPadding(
                                                        left: 29,
                                                        top: 16,
                                                        right: 29,
                                                        bottom: 16),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgGroup9322),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      79),
                                                              margin: getMargin(
                                                                  bottom: 32),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_30"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(13.405783653259277),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700)),
                                                                        TextSpan(
                                                                            text: "lbl_entertainment"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(11.171485900878906),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin:
                                                        getMargin(bottom: 9),
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 54,
                                                        right: 8,
                                                        bottom: 54),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgGroup9321),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      62),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_20"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(13.405783653259277),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700)),
                                                                        TextSpan(
                                                                            text: "lbl_investment"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(11.171485900878906),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                    margin: getMargin(
                                                        right: 25, bottom: 1),
                                                    padding: getPadding(
                                                        left: 21,
                                                        top: 14,
                                                        right: 21,
                                                        bottom: 14),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgGroup9320),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      38),
                                                              margin: getMargin(
                                                                  bottom: 28),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_35"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(13.405783653259277),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700)),
                                                                        TextSpan(
                                                                            text: "lbl_others"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(11.171485900878906),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    margin: getMargin(
                                                        top: 21, right: 1),
                                                    padding: getPadding(
                                                        left: 13,
                                                        top: 5,
                                                        right: 13,
                                                        bottom: 5),
                                                    decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                            image: fs.Svg(
                                                                ImageConstant
                                                                    .imgGroup9319),
                                                            fit: BoxFit.cover)),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      66),
                                                              margin: getMargin(
                                                                  top: 32),
                                                              child: RichText(
                                                                  text: TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                            text: "lbl_15"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(13.405783653259277),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700)),
                                                                        TextSpan(
                                                                            text: "lbl_bill_expense"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: ColorConstant.whiteA700,
                                                                                fontSize: getFontSize(11.171485900878906),
                                                                                fontFamily: 'Inter',
                                                                                fontWeight: FontWeight.w700))
                                                                      ]),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center))
                                                        ])))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 23),
                                  child: Text("lbl_quick_transfer".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterSemiBold16)),
                              Container(
                                  margin: getMargin(top: 15, right: 24),
                                  padding: getPadding(
                                      left: 18, top: 20, right: 18, bottom: 20),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse1850x501,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text(
                                                                "lbl_livia_bator"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Text(
                                                                "lbl_ceo".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 21, bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse1850x502,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text(
                                                                "lbl_randy_press"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray800)),
                                                        Text("lbl_director".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterRegular12)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 21),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse1850x503,
                                                            height: getSize(50),
                                                            width: getSize(50),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        25))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text(
                                                                "lbl_workman"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12Bluegray900)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "lbl_designer"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12))
                                                      ])),
                                              CustomIconButton(
                                                  height: 40,
                                                  width: 40,
                                                  margin: getMargin(
                                                      left: 22,
                                                      top: 24,
                                                      bottom: 30),
                                                  variant: IconButtonVariant
                                                      .OutlineGray300cc,
                                                  shape: IconButtonShape
                                                      .CircleBorder20,
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowrightBlueGray400))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 11, bottom: 13),
                                                      child: Text(
                                                          "lbl_write_amount".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          187),
                                                      margin:
                                                          getMargin(left: 25),
                                                      decoration: AppDecoration
                                                          .fillGray10001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder20),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 13,
                                                                        bottom:
                                                                            11),
                                                                child: Text(
                                                                    "lbl_525_50"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold12)),
                                                            CustomButton(
                                                                height:
                                                                    getVerticalSize(
                                                                        40),
                                                                width:
                                                                    getHorizontalSize(
                                                                        100),
                                                                text: "lbl_send"
                                                                    .tr,
                                                                margin: getMargin(
                                                                    left: 29),
                                                                variant:
                                                                    ButtonVariant
                                                                        .OutlineGray300cc,
                                                                shape: ButtonShape
                                                                    .CircleBorder20,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingT11,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterMedium13WhiteA700,
                                                                suffixWidget: Container(
                                                                    margin: getMargin(
                                                                        left:
                                                                            9),
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgSend)))
                                                          ]))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 1, top: 24),
                                  child: Text("lbl_balance_history".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtInterSemiBold16Bluegray800)),
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(left: 1, top: 14),
                                  color: ColorConstant.whiteA700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Container(
                                      height: getVerticalSize(223),
                                      width: getHorizontalSize(325),
                                      padding: getPadding(
                                          left: 18,
                                          top: 14,
                                          right: 18,
                                          bottom: 14),
                                      decoration: AppDecoration.fillWhiteA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Text("lbl_800".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterRegular12),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                width:
                                                                    getHorizontalSize(
                                                                        6),
                                                                margin:
                                                                    getMargin(
                                                                        left: 4,
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .blueGray400))
                                                          ]),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    "lbl_600"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        left: 4,
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    "lbl_400"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        left: 4,
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "lbl_200"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        left: 3,
                                                                        top: 6,
                                                                        bottom:
                                                                            7),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 25),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    "lbl_06".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterRegular12),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6),
                                                                    margin: getMargin(
                                                                        left: 5,
                                                                        top: 6,
                                                                        bottom:
                                                                            7),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.blueGray400))
                                                              ]))
                                                    ])),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(184),
                                                    width:
                                                        getHorizontalSize(256),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Row(
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1), margin: getMargin(left: 1)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_jul".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                20),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1)),
                                                                              Padding(padding: getPadding(top: 5), child: Text("lbl_aug".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1)),
                                                                              Padding(padding: getPadding(top: 4), child: Text("lbl_sep".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_oct".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                15,
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_nov2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                13),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1)),
                                                                              Padding(padding: getPadding(top: 4), child: Text("lbl_dec".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                14,
                                                                            bottom:
                                                                                1),
                                                                        child: Column(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup, height: getVerticalSize(4), width: getHorizontalSize(1)),
                                                                              Padding(padding: getPadding(top: 3), child: Text("lbl_jan".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterRegular12))
                                                                            ]))
                                                                  ])),
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgGroup1032,
                                                              height:
                                                                  getVerticalSize(
                                                                      161),
                                                              width:
                                                                  getHorizontalSize(
                                                                      255),
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter)
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.creditCardsScreen,
    );
  }

  onTapMenu() {
    _scaffoldKey.currentState?.openDrawer();
  }
}
