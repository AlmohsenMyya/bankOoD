import 'package:get/get.dart';
import 'transactions_item_model.dart';

class TransactionsModel {
  Rx<List<TransactionsItemModel>> transactionsItemList =
      Rx(List.generate(5, (index) => TransactionsItemModel()));
}
