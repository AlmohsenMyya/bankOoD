import 'package:get/get.dart';
import 'listbalance1_item_model.dart';

class TransactionsTabContainerModel {
  Rx<List<Listbalance1ItemModel>> listbalance1ItemList =
      Rx(List.generate(2, (index) => Listbalance1ItemModel()));
}
