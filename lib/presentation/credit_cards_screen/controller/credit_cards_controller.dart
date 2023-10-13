import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/credit_cards_screen/models/credit_cards_model.dart';
import 'package:flutter/material.dart';

class CreditCardsController extends GetxController {
  TextEditingController group572Controller = TextEditingController();

  TextEditingController group572OneController = TextEditingController();

  TextEditingController group572TwoController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController group420Controller = TextEditingController();

  Rx<CreditCardsModel> creditCardsModelObj = CreditCardsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group572Controller.dispose();
    group572OneController.dispose();
    group572TwoController.dispose();
    dateController.dispose();
    group420Controller.dispose();
  }
}
