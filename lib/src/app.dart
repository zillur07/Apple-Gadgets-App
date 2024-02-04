import 'package:apple_g_project/src/base/base_bindings.dart';
import 'package:apple_g_project/src/pages/home_page.dart';
import 'package:apple_g_project/src/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BaseBindings(),
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.onlyBuilder,
      home: LoginPage(),
    );
  }
}
