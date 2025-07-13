import 'package:get/get.dart';
import 'package:mind_training_app/controllers/settings_controller.dart';


class SettingsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}