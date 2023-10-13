import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/investments_screen/models/investments_model.dart';
import 'package:flutter/material.dart';

class InvestmentsController extends GetxController {
  TextEditingController group420Controller = TextEditingController();

  Rx<InvestmentsModel> investmentsModelObj = InvestmentsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group420Controller.dispose();
  }
}
