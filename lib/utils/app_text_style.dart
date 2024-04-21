import 'package:flutter/material.dart';

class AppTextStyle {
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  AppTextStyle(
      {this.fontSize = 18,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.black});

  TextStyle get style {
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
