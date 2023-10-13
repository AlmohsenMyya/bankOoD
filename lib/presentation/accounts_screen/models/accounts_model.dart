import 'package:get/get.dart';
import 'accounts_item_model.dart';
import 'listalarm_item_model.dart';
import 'listrefresh_item_model.dart';

class AccountsModel {
  Rx<List<AccountsItemModel>> accountsItemList =
      Rx(List.generate(4, (index) => AccountsItemModel()));

  Rx<List<ListalarmItemModel>> listalarmItemList =
      Rx(List.generate(3, (index) => ListalarmItemModel()));

  Rx<List<ListrefreshItemModel>> listrefreshItemList =
      Rx(List.generate(4, (index) => ListrefreshItemModel()));
}
