import '../controller/loans_controller.dart';
import 'package:get/get.dart';

class LoansBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoansController());
  }
}
