import 'package:get/get.dart';
import 'listlocation_item_model.dart';
import 'listquestion_item_model.dart';

class ServicesModel {
  Rx<List<ListlocationItemModel>> listlocationItemList =
      Rx(List.generate(3, (index) => ListlocationItemModel()));

  Rx<List<ListquestionItemModel>> listquestionItemList =
      Rx(List.generate(6, (index) => ListquestionItemModel()));
}
