import '../controller/setting_preference_tab_container_controller.dart';
import 'package:get/get.dart';

class SettingPreferenceTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingPreferenceTabContainerController());
  }
}
