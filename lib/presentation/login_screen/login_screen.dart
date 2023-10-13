import 'controller/login_controller.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/custom_button.dart';
import 'package:bank_templates/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bank_templates/data/models/login/post_login_req.dart';
import 'package:bank_templates/data/models/login/post_login_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 13, right: 16, bottom: 13),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftIndigo600,
                          height: getSize(24),
                          width: getSize(24),
                          margin: getMargin(left: 10),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Padding(
                          padding: getPadding(top: 82),
                          child: Text("msg_welcome_to_firstbank".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold28)),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("msg_login_your_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailidController,
                          hintText: "lbl_email_id".tr,
                          margin: getMargin(top: 22),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingAll15,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputType: TextInputType.emailAddress),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 16),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 20, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant
                                              .imgCheckmarkBlueGray400
                                          : ImageConstant
                                              .imgCheckmarkBlueGray400))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          isObscureText: controller.isShowPassword.value)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword();
                              },
                              child: Padding(
                                  padding: getPadding(top: 16),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterMedium16)))),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_log_in2".tr,
                          margin: getMargin(top: 38, bottom: 5),
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterRegular18,
                          onTap: () {
                            onTapLogin();
                          })
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }

  Future<void> onTapLogin() async {
    PostLoginReq postLoginReq = PostLoginReq(
      username: controller.emailidController.text,
      password: controller.passwordController.text,
    );
    try {
      await controller.callCreateLogin(
        postLoginReq.toJson(),
      );
      _onOnTapLoginSuccess();
    } on PostLoginResp {
      _onOnTapLoginError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapLoginSuccess() {
    Get.offNamed(AppRoutes.homeScreen,
        arguments: {NavigationArgs.id: controller.postLoginResp.data!.id!});
  }

  void _onOnTapLoginError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }
}
