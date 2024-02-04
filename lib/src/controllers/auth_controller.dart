import 'package:apple_g_project/src/pages/home_page.dart';
import 'package:apple_g_project/src/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isLoggedIn = false.obs;

  void login(String login, String password) async {
    try {
      // Call the login API
      final response = await ApiService().login(login, password);

      if (response.statusCode == 200) {
        // Successful login
        final token = response.data[
            'fcf8e36e8053d1375b845b31cfb65953f2fd099b7f392ee51200091d97aed0c2'];
        // Save the token, implement your own storage mechanism
        // You might want to use GetStorage or SharedPreferences
        // For simplicity, we'll use GetxController to manage the state
        isLoggedIn.value = true;
        Get.offAll(HomePage());
      } else {
        // Failed login
        isLoggedIn.value = false;
        // Handle other status codes as needed
      }
    } catch (e) {
      print('Error: $e');
      isLoggedIn.value = false;
    }
  }

  void logout() {
    // Implement logout logic here
    isLoggedIn.value = false;
  }
}
