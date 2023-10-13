import '../transactions_page/widgets/transactions_item_widget.dart';
import 'controller/transactions_controller.dart';
import 'models/transactions_item_model.dart';
import 'models/transactions_model.dart';
import 'package:bank_templates/core/app_export.dart';
import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  TransactionsController controller =
      Get.put(TransactionsController(TransactionsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 46,
                  top: 37,
                  right: 44,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: getPadding(
                          top: 9.5,
                          bottom: 9.5,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            285,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray10002,
                          ),
                        ),
                      );
                    },
                    itemCount: controller.transactionsModelObj.value
                        .transactionsItemList.value.length,
                    itemBuilder: (context, index) {
                      TransactionsItemModel model = controller
                          .transactionsModelObj
                          .value
                          .transactionsItemList
                          .value[index];
                      return TransactionsItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
