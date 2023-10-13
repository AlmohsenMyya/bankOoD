import 'controller/new_password_controller.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends GetWidget<NewPasswordController> {
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
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_create_new".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray900,
                                        fontSize: getFontSize(28),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700)),
                                TextSpan(
                                    text: "lbl_password".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray900,
                                        fontSize: getFontSize(28),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("msg_create_your_new".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.newpasswordController,
                          hintText: "lbl_new_password".tr,
                          margin: getMargin(top: 22),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
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
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.confirmpasswordController,
                          hintText: "msg_confirm_password".tr,
                          margin: getMargin(top: 16),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword1.value =
                                    !controller.isShowPassword1.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 13, right: 20, bottom: 13),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword1.value
                                          ? ImageConstant
                                              .imgCheckmarkBlueGray400
                                          : ImageConstant
                                              .imgCheckmarkBlueGray400))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(50)),
                          isObscureText: controller.isShowPassword1.value)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtResetpassword();
                          },
                          child: Container(
                              width: getHorizontalSize(343),
                              margin: getMargin(top: 40, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 13, right: 103, bottom: 13),
                              decoration: AppDecoration.txtFillIndigo600
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtCircleBorder25),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_reset".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_password2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(18),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400))
                                  ]),
                                  textAlign: TextAlign.left)))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtResetpassword() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
