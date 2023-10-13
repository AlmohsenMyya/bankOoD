import '../controller/transactions_controller.dart';
import '../models/transactions_item_model.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:bank_templates/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TransactionsItemWidget extends StatelessWidget {
  TransactionsItemWidget(this.transactionsItemModelObj);

  TransactionsItemModel transactionsItemModelObj;

  var controller = Get.find<TransactionsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 35,
          width: 35,
          margin: getMargin(
            bottom: 1,
          ),
          variant: IconButtonVariant.OutlineRed700,
          shape: IconButtonShape.RoundedBorder17,
          child: CustomImageView(
            svgPath: ImageConstant.imgArrow,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  transactionsItemModelObj.typeTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterMedium13,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Obx(
                  () => Text(
                    transactionsItemModelObj.timeTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular12,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 9,
            bottom: 10,
          ),
          child: Obx(
            () => Text(
              transactionsItemModelObj.priceTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium13Red700,
            ),
          ),
        ),
      ],
    );
  }
}
