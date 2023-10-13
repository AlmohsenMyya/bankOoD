import '../controller/investments_controller.dart';
import 'package:get/get.dart';

class InvestmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvestmentsController());
  }
}
