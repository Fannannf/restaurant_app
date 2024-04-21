import 'package:flutter/material.dart';
import 'package:restauran_app/utils/app_colors.dart';
import 'package:restauran_app/utils/app_text_style.dart';

AppBar CustomAppBar(
  BuildContext context,
  String text, {
  Icon? icon,
  void Function()? onTap,
  Color? backgroundColor,
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      text,
      style: AppTextStyle(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w700,
      ).style,
    ),
    centerTitle: true,
    leading: GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: icon),
      ),
    ),
    actions: <Widget>[
      Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Image.asset("assets/images/muhamad_fannan.jpg"),
      ),
    ],
  );
}
