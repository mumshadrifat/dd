import 'package:get/get.dart';

import '../modules/FormTwo/bindings/form_two_binding.dart';
import '../modules/FormTwo/views/form_two_view.dart';
import '../modules/form/bindings/form_binding.dart';
import '../modules/form/views/form_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/task/bindings/task_binding.dart';
import '../modules/task/views/task_view.dart';
import '../modules/task_details/bindings/task_details_binding.dart';
import '../modules/task_details/views/task_details_view.dart';
import '../modules/task_forward/bindings/task_forward_binding.dart';
import '../modules/task_forward/views/task_forward_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FORM,
      page: () => const FormView(),
      binding: FormBinding(),
    ),
    GetPage(
      name: _Paths.FORM_TWO,
      page: () => const FormTwoView(),
      binding: FormTwoBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.TASK,
      page: () => const TaskView(),
      binding: TaskBinding(),
    ),
    GetPage(
      name: _Paths.TASK_DETAILS,
      page: () => TaskDetailsView(),
      binding: TaskDetailsBinding(),
    ),
    GetPage(
      name: _Paths.TASK_FORWARD,
      page: () => const TaskForwardView(),
      binding: TaskForwardBinding(),
    ),
  ];
}
