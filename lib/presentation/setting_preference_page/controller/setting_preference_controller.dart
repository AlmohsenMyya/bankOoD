import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/setting_preference_page/models/setting_preference_model.dart';
import 'package:flutter/material.dart';

class SettingPreferenceController extends GetxController {
  SettingPreferenceController(this.settingPreferenceModelObj);

  TextEditingController currencyOneController = TextEditingController();

  TextEditingController timezoneOneController = TextEditingController();

  Rx<SettingPreferenceModel> settingPreferenceModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    currencyOneController.dispose();
    timezoneOneController.dispose();
  }
}
