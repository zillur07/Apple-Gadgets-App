import 'package:apple_g_project/src/controllers/auth_controller.dart';
import 'package:apple_g_project/src/controllers/users_controller.dart';
import 'package:get/get.dart';

class Base {
  static final usersController = Get.find<UsersController>();
  static final authController = Get.find<AuthController>();
}
