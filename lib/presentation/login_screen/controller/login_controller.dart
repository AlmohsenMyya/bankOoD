import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:bank_templates/data/models/login/post_login_resp.dart';
import 'package:bank_templates/data/apiClient/api_client.dart';

class LoginController extends GetxController {
  TextEditingController emailidController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailidController.dispose();
    passwordController.dispose();
  }

  Future<void> callCreateLogin(Map req) async {
    try {
      postLoginResp = await Get.find<ApiClient>().createLogin(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateLoginSuccess();
    } on PostLoginResp catch (e) {
      postLoginResp = e;
      rethrow;
    }
  }

  void _handleCreateLoginSuccess() {
    Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString());
  }
}
