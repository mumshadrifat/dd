import 'package:get/get.dart';

import '../controllers/form_two_controller.dart';

class FormTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FormTwoController>(
      () => FormTwoController(),
    );
  }
}
