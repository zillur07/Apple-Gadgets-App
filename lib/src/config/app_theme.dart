import 'package:apple_g_project/src/config/colors.dart';

import 'package:flutter/material.dart';

class AppTheme {
  static final appTheme = ThemeData(
    scaffoldBackgroundColor: white,
    useMaterial3: true,
    // brightness: Brightness.dark,
    fontFamily: regular,
    appBarTheme: AppBarTheme(
      // elevation: 0,
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: 14,
      ),
      iconTheme: IconThemeData(
        color: primaryColor,
      ),
    ),
  );
}
