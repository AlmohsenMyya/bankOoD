import '../controller/accounts_controller.dart';
import 'package:get/get.dart';

class AccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountsController());
  }
}
