import '../controller/get_started_controller.dart';
import 'package:get/get.dart';

class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetStartedController());
  }
}
