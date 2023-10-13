import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/presentation/transactions_tab_container_screen/models/transactions_tab_container_model.dart';
import 'package:flutter/material.dart';

class TransactionsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController group420Controller = TextEditingController();

  Rx<TransactionsTabContainerModel> transactionsTabContainerModelObj =
      TransactionsTabContainerModel().obs;

  late TabController group744Controller =
      Get.put(TabController(vsync: this, length: 3));

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
