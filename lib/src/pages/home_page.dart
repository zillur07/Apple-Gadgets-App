import 'package:apple_g_project/src/base/base.dart';

import 'package:apple_g_project/src/pages/users_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(() => UsersPage());
      }),
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () {
                Base.authController.logout();
                Get.offAll(() => UsersPage());
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
