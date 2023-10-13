import 'controller/get_started_controller.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:bank_templates/domain/googleauth/google_auth_helper.dart';

class GetStartedScreen extends GetWidget<GetStartedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 119, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("msg_lets_get_started".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterSemiBold28),
                      Container(
                          width: getHorizontalSize(220),
                          margin: getMargin(top: 16),
                          child: Text("msg_find_the_right_and".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_login".tr,
                          margin: getMargin(top: 20),
                          variant: ButtonVariant.FillIndigo60014,
                          shape: ButtonShape.RoundedBorder15,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterMedium16,
                          onTap: () {
                            onTapLogin();
                          }),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_register".tr,
                          margin: getMargin(top: 16),
                          variant: ButtonVariant.FillIndigo60014,
                          shape: ButtonShape.RoundedBorder15,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterMedium16,
                          onTap: () {
                            onTapRegister();
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 25),
                              child: Text("msg_or_use_instant_sign".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold12))),
                      GestureDetector(
                          onTap: () {
                            onTapRowgoogle();
                          },
                          child: Container(
                              margin: getMargin(top: 24),
                              padding: getPadding(
                                  left: 16, top: 9, right: 16, bottom: 9),
                              decoration: AppDecoration.outlineBluegray400
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGoogleBlueA200,
                                    height: getSize(32),
                                    width: getSize(32)),
                                Padding(
                                    padding:
                                        getPadding(left: 55, top: 6, bottom: 5),
                                    child: Text("msg_sign_with_google".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold16))
                              ]))),
                      Container(
                          margin: getMargin(top: 24, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 9, right: 16, bottom: 9),
                          decoration: AppDecoration.outlineBluegray400.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUserBlueGray90001,
                                height: getSize(32),
                                width: getSize(32)),
                            Padding(
                                padding:
                                    getPadding(left: 60, top: 6, bottom: 5),
                                child: Text("lbl_sign_with_apple".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold16))
                          ]))
                    ]))));
  }

  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  onTapRegister() {
    Get.toNamed(
      AppRoutes.registersScreen,
    );
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
