import 'package:apple_g_project/src/pages/home_page.dart';
import 'package:apple_g_project/src/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  RxBool isLoggedIn = false.obs;

  // Key for shared preferences
  static const String _loggedInKey = 'is_logged_in';

  @override
  void onInit() {
    // Check shared preferences on initialization
    checkLoggedIn();
    super.onInit();
  }

  void checkLoggedIn() async {
    // Retrieve login status from shared preferences
    final prefs = await SharedPreferences.getInstance();
    isLoggedIn.value = prefs.getBool(_loggedInKey) ?? false;
  }

  void login(String login, String password) async {
    try {
      // Call the login API
      final response = await ApiService().login(login, password);

      if (response.statusCode == 200) {
        // Successful login
        final token = response.data[
            'fcf8e36e8053d1375b845b31cfb65953f2fd099b7f392ee51200091d97aed0c2'];

        // Save login status to shared preferences
        final prefs = await SharedPreferences.getInstance();
        prefs.setBool(_loggedInKey, true);
        isLoggedIn.value = true;
        Get.offAllNamed('/home');
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

  void logout() async {
    // Clear login status from shared preferences
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_loggedInKey, false);

    // Implement other logout logic here
    isLoggedIn.value = false;

    Get.offAllNamed('/login');
  }
}
