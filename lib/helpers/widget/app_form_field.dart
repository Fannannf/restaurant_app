import 'package:flutter/material.dart';
import 'package:restauran_app/utils/app_colors.dart';

TextFormField AppFormField({
  Icon? icon,
  String? hintText,
  TextEditingController? controller,
  void Function(String)? onChange,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.searchColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.symmetric(vertical: 15)),
    onChanged: onChange,
  );
}
