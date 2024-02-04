import 'package:apple_g_project/src/controllers/auth_controller.dart';
import 'package:apple_g_project/src/controllers/users_controller.dart';
import 'package:get/get.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => UsersController());
  }
}
