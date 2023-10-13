import '../controller/investments_controller.dart';
import '../models/listslno_item_model.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListslnoItemWidget extends StatelessWidget {
  ListslnoItemWidget(this.listslnoItemModelObj);

  ListslnoItemModel listslnoItemModelObj;

  var controller = Get.find<InvestmentsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text(
            listslnoItemModelObj.sLNoTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Bluegray400,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 19,
          ),
          child: Obx(
            () => Text(
              listslnoItemModelObj.nameTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium12Bluegray400,
            ),
          ),
        ),
        Spacer(
          flex: 52,
        ),
        Obx(
          () => Text(
            listslnoItemModelObj.priceTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Bluegray400,
          ),
        ),
        Spacer(
          flex: 47,
        ),
        Obx(
          () => Text(
            listslnoItemModelObj.returnTxt.value,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtInterMedium12Bluegray400,
          ),
        ),
      ],
    );
  }
}
