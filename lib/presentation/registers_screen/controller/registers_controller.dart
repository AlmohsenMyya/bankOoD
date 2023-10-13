import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/registers_screen/models/registers_model.dart';
import 'package:flutter/material.dart';
import 'package:bank_templates/data/models/register/post_register_resp.dart';
import 'package:bank_templates/data/apiClient/api_client.dart';

class RegistersController extends GetxController {
  TextEditingController frameThirtyController = TextEditingController();

  TextEditingController frameThirtyTwoController = TextEditingController();

  TextEditingController frameThirtyOneController = TextEditingController();

  TextEditingController frameThirtyTwoOneController = TextEditingController();

  Rx<RegistersModel> registersModelObj = RegistersModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameThirtyController.dispose();
    frameThirtyTwoController.dispose();
    frameThirtyOneController.dispose();
    frameThirtyTwoOneController.dispose();
  }

  Future<void> callCreateRegister(Map req) async {
    try {
      postRegisterResp = await Get.find<ApiClient>().createRegister(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateRegisterSuccess();
    } on PostRegisterResp catch (e) {
      postRegisterResp = e;
      rethrow;
    }
  }

  void _handleCreateRegisterSuccess() {
    Get.find<PrefUtils>().setId(postRegisterResp.data!.id!.toString());
  }
}
