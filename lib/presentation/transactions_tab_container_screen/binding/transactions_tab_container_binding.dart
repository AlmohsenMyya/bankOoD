import '../controller/transactions_tab_container_controller.dart';
import 'package:get/get.dart';

class TransactionsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionsTabContainerController());
  }
}
