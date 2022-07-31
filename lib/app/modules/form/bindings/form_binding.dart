import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/form_controller.dart';

class FormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormController>(
      () => FormController(),
    );
    Get.put(HomeController());
  }
}
