import 'package:apple_g_project/src/helpers/hexColor.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../config/colors.dart';

Widget customTextField({
  String? title,
  String? hint,
  controller,
  isPass,
}) {
  FocusNode myFocusNode = FocusNode();
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 5,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title!.text.gray600.size(17).fontWeight(FontWeight.w500).make(),
        7.heightBox,
        TextFormField(
          controller: controller,
          focusNode: myFocusNode,
          obscureText: isPass,
          decoration: InputDecoration(
            labelStyle: TextStyle(
                color: myFocusNode.hasFocus ? Colors.blue : Colors.black),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 2, color: hexToColor('#EFF0F1')),
            ),
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.blueGrey,
            ),
            // isDense: true,
            fillColor: myFocusNode.hasFocus ? Colors.blue : Colors.white,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: primaryColor, width: 2),
            ),
          ),
        ),
        5.heightBox,
      ],
    ),
  );
}
