import 'controller/registers_controller.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/custom_button.dart';
import 'package:bank_templates/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:bank_templates/data/models/register/post_register_req.dart';
import 'package:bank_templates/data/models/register/post_register_resp.dart';
import 'package:bank_templates/core/constants/role.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegistersScreen extends GetWidget<RegistersController> {
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
                          child: Text("msg_create_a_new_account".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold28)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("msg_it_s_fast_and_easy".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterMedium14)),
                      Padding(
                          padding: getPadding(top: 22, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.frameThirtyController,
                                        hintText: "lbl_first_name".tr,
                                        margin: getMargin(right: 8),
                                        variant: TextFormFieldVariant
                                            .FillIndigo60014,
                                        shape:
                                            TextFormFieldShape.RoundedBorder15,
                                        padding:
                                            TextFormFieldPadding.PaddingAll15,
                                        fontStyle: TextFormFieldFontStyle
                                            .InterMedium16)),
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.frameThirtyTwoController,
                                        hintText: "lbl_last_name".tr,
                                        margin: getMargin(left: 8),
                                        variant: TextFormFieldVariant
                                            .FillIndigo60014,
                                        shape:
                                            TextFormFieldShape.RoundedBorder15,
                                        padding:
                                            TextFormFieldPadding.PaddingAll15,
                                        fontStyle: TextFormFieldFontStyle
                                            .InterMedium16))
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.frameThirtyOneController,
                          hintText: "lbl_email_id".tr,
                          margin: getMargin(top: 16),
                          variant: TextFormFieldVariant.FillIndigo60014,
                          shape: TextFormFieldShape.RoundedBorder15,
                          padding: TextFormFieldPadding.PaddingAll15,
                          fontStyle: TextFormFieldFontStyle.InterMedium16,
                          textInputType: TextInputType.emailAddress),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.frameThirtyTwoOneController,
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
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_registers".tr,
                          margin: getMargin(top: 40, bottom: 5),
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.InterRegular18,
                          onTap: () {
                            onTapRegisters();
                          })
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  Future<void> onTapRegisters() async {
    PostRegisterReq postRegisterReq = PostRegisterReq(
      username: controller.frameThirtyOneController.text,
      password: controller.frameThirtyTwoOneController.text,
      email: controller.frameThirtyOneController.text,
      name: controller.frameThirtyController.text,
      role: Role.user,
    );
    try {
      await controller.callCreateRegister(
        postRegisterReq.toJson(),
      );
      _onOnTapRegistersSuccess();
    } on PostRegisterResp {
      _onOnTapRegistersError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapRegistersSuccess() {
    Get.offNamed(AppRoutes.homeScreen,
        arguments: {NavigationArgs.id: controller.postRegisterResp.data!.id!});
  }

  void _onOnTapRegistersError() {
    Fluttertoast.showToast(
      msg: controller.postRegisterResp.message!.toString(),
    );
  }
}
