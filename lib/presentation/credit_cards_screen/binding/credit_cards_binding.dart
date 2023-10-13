import '../controller/credit_cards_controller.dart';
import 'package:get/get.dart';

class CreditCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreditCardsController());
  }
}
