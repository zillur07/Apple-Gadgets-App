import 'package:apple_g_project/src/base/base.dart';

import 'package:apple_g_project/src/config/colors.dart';
import 'package:apple_g_project/src/controllers/auth_controller.dart';
import 'package:apple_g_project/src/helpers/hexColor.dart';
import 'package:apple_g_project/src/helpers/k_text.dart';
import 'package:apple_g_project/src/widgets/custom_textfield.dart';
import 'package:apple_g_project/src/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            80.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: KText(
                text: 'Welcome Back! 🎉',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            5.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: KText(
                text: 'Log in to your account.',
                fontSize: 16,
                color: hexToColor('#43505C'),
                fontWeight: FontWeight.w500,
              ),
            ),
            15.heightBox,
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: customTextField(
                controller: _usernameController,
                title: 'Username/Email',
                hint: 'Enter your Email',
                isPass: false,
              ),
            ),
            5.heightBox,
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: customTextField(
                controller: _passwordController,
                title: 'Password',
                hint: 'Enter your password',
                isPass: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                //Get.to(ForgotPage());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: KText(
                  text: 'Forgot password',
                  fontSize: 16,
                  color: hexToColor('#43505C'),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            15.heightBox,
            InkWell(
              onTap: () {
                Base.authController.login(
                  _usernameController.text,
                  _passwordController.text,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ourButton(
                  btColor: primaryColor,
                  title: 'Log In',
                  textColor: white,
                ),
              ),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KText(
                    text: 'Don’t have an account? ',
                    fontSize: 16,
                    color: hexToColor('#43505C'),
                    fontWeight: FontWeight.w500,
                  ),
                  GestureDetector(
                    onTap: () {
                      //  Get.to(RegistrationPage());
                    },
                    child: KText(
                      text: 'Sign Up',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
