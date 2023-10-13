import '../controller/loans_controller.dart';
import '../models/listprice_item_model.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelObj);

  ListpriceItemModel listpriceItemModelObj;

  var controller = Get.find<LoansController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: getPadding(
            top: 5,
            bottom: 4,
          ),
          child: Obx(
            () => Text(
              listpriceItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Bluegray900,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 52,
            top: 5,
            bottom: 4,
          ),
          child: Obx(
            () => Text(
              listpriceItemModelObj.priceOneTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular12Bluegray900,
            ),
          ),
        ),
        CustomButton(
          height: getVerticalSize(
            25,
          ),
          width: getHorizontalSize(
            70,
          ),
          text: "lbl_repay".tr,
          margin: getMargin(
            left: 60,
          ),
          variant: ButtonVariant.OutlineIndigo500,
        ),
      ],
    );
  }
}
