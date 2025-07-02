import 'package:get/get.dart';
import 'package:mind_training_app/controllers/main_controller.dart';


class MainControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}