import '../controller/registers_controller.dart';
import 'package:get/get.dart';

class RegistersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistersController());
  }
}
