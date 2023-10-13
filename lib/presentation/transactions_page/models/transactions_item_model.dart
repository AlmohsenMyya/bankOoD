import 'package:get/get.dart';

class TransactionsItemModel {
  Rx<String> typeTxt = Rx("Spotify Subscription");

  Rx<String> timeTxt = Rx("28 Jan, 12.30 AM");

  Rx<String> priceTxt = Rx("-2,500");

  Rx<String>? id = Rx("");
}
