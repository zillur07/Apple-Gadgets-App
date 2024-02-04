import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helpers/k_text.dart';

Widget ourButton({btColor, textColor, String? title}) {
  return Container(
    padding: EdgeInsets.all(5),
    height: 55,
    width: Get.width,
    decoration:
        BoxDecoration(color: btColor, borderRadius: BorderRadius.circular(30)),
    child: Center(
      child: KText(
        text: title,
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget ourButton2({btColor, textColor, String? title}) {
  return Container(
    padding: EdgeInsets.all(5),
    height: 55,
    width: Get.width,
    decoration: BoxDecoration(
        color: btColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey)),
    child: Center(
      child: KText(
        text: title,
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
