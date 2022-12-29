import 'package:flutter/material.dart';


class CustomSizedBox {
  static SizedBox verticalSpace(double height) {
    return SizedBox(height: height);
  }

  static SizedBox horizontalSpace(double width) {
    return SizedBox(
      width: width,
    );
  }
}
