import '../controller/services_controller.dart';
import 'package:get/get.dart';

class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServicesController());
  }
}
