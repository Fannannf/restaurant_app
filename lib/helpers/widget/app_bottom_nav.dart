import 'package:flutter/material.dart';
import 'package:restauran_app/utils/app_colors.dart';

BottomNavigationBar appBottomNavigationBar({
  int currentIndex = 0,
  Function(int)? onTap,
}) {
  return BottomNavigationBar(
    currentIndex: currentIndex,
    onTap: onTap,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
          color: currentIndex == 0 ? AppColors.primaryColor : Colors.black38,
        ),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          currentIndex == 1 ? Icons.person : Icons.person_outline_rounded,
          color: currentIndex == 1 ? AppColors.primaryColor : Colors.black38,
        ),
        label: "Profile",
      ),
    ],
  );
}
