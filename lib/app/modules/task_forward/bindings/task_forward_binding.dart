import 'package:get/get.dart';

import '../controllers/task_forward_controller.dart';

class TaskForwardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskForwardController>(
      () => TaskForwardController(),
    );
  }
}
