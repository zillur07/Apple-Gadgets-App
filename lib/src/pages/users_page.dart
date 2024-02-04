import 'package:apple_g_project/src/base/base.dart';
import 'package:apple_g_project/src/controllers/users_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users Page'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: Base.usersController.users.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (BuildContext context, int index) {
            final item = Base.usersController.users[index];
            return Center(child: Text('${item}'));
          },
        ),
      ),
    );
  }
}
