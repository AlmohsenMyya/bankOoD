import 'controller/splash_controller.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.indigo600,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: getVerticalSize(58),
                          width: getHorizontalSize(233),
                          margin: getMargin(bottom: 5))
                    ]))));
  }
}
