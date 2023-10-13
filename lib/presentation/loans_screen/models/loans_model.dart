import 'package:get/get.dart';
import 'listuser1_item_model.dart';
import 'listprice_item_model.dart';

class LoansModel {
  Rx<List<Listuser1ItemModel>> listuser1ItemList =
      Rx(List.generate(4, (index) => Listuser1ItemModel()));

  Rx<List<ListpriceItemModel>> listpriceItemList =
      Rx(List.generate(8, (index) => ListpriceItemModel()));
}
