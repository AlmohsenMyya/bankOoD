import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:bank_templates/data/models/me/get_me_resp.dart';
import 'package:bank_templates/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SettingEditProfileController extends GetxController {
  SettingEditProfileController(this.settingEditProfileModelObj);

  TextEditingController languageController = TextEditingController();

  TextEditingController languageOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group572TwoController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController group572ThreeController = TextEditingController();

  Rx<SettingEditProfileModel> settingEditProfileModelObj;

  SelectionPopupModel? selectedDropDownValue;

  GetMeResp getMeResp = GetMeResp();

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      await this.callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
    languageOneController.dispose();
    emailOneController.dispose();
    passwordOneController.dispose();
    group572Controller.dispose();
    group572OneController.dispose();
    group572TwoController.dispose();
    zipcodeController.dispose();
    group572ThreeController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    settingEditProfileModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    settingEditProfileModelObj.value.dropdownItemList.refresh();
  }

  Future<void> callFetchMe() async {
    try {
      getMeResp = await Get.find<ApiClient>().fetchMe(headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY4OTgyMn0.fh9TL3QIkwUvqXNQ9ztlvb5qXnN-st_70G9CsvVB0M8',
      });
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  void _handleFetchMeSuccess() {
    languageController.text = getMeResp.data!.username!.toString();
    emailOneController.text = getMeResp.data!.email!.toString();
    languageController.text = getMeResp.data!.name!.toString();
  }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {
    Fluttertoast.showToast(
      msg: getMeResp.message!.toString(),
    );
  }
}
