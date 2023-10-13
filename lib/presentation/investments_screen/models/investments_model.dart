import 'package:get/get.dart';
import 'listcontrast_item_model.dart';
import 'listuser_item_model.dart';
import 'listslno_item_model.dart';

class InvestmentsModel {
  Rx<List<ListcontrastItemModel>> listcontrastItemList =
      Rx(List.generate(3, (index) => ListcontrastItemModel()));

  Rx<List<ListuserItemModel>> listuserItemList =
      Rx(List.generate(3, (index) => ListuserItemModel()));

  Rx<List<ListslnoItemModel>> listslnoItemList =
      Rx(List.generate(6, (index) => ListslnoItemModel()));
}
