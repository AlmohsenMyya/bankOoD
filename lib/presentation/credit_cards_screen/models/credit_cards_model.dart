import 'package:get/get.dart';
import 'listbalance2_item_model.dart';
import 'listellipsethirtythree_item_model.dart';
import 'listfile_item_model.dart';
import 'listlock_item_model.dart';

class CreditCardsModel {
  Rx<List<Listbalance2ItemModel>> listbalance2ItemList =
      Rx(List.generate(3, (index) => Listbalance2ItemModel()));

  Rx<List<ListellipsethirtythreeItemModel>> listellipsethirtythreeItemList =
      Rx(List.generate(2, (index) => ListellipsethirtythreeItemModel()));

  Rx<List<ListfileItemModel>> listfileItemList =
      Rx(List.generate(3, (index) => ListfileItemModel()));

  Rx<List<ListlockItemModel>> listlockItemList =
      Rx(List.generate(4, (index) => ListlockItemModel()));
}
