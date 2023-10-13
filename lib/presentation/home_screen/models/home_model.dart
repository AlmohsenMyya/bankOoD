import 'package:get/get.dart';
import 'listbalance_item_model.dart';
import 'listvideocamera_item_model.dart';

class HomeModel {
  Rx<List<ListbalanceItemModel>> listbalanceItemList =
      Rx(List.generate(2, (index) => ListbalanceItemModel()));

  Rx<List<ListvideocameraItemModel>> listvideocameraItemList =
      Rx(List.generate(3, (index) => ListvideocameraItemModel()));
}
