import 'package:flutter/material.dart';
import 'package:restauran_app/utils/app_colors.dart';
import 'package:restauran_app/utils/app_text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                child: Image.asset(
                  "assets/images/muhamad_fannan.jpg",
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Muhamad Fannan Najma Falahi",
                    style:
                        AppTextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                            .style,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "fananfalahi46@gmail.com",
                    style:
                        AppTextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                            .style,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                      color: Colors.black38,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Belajar Fundamental Flutter",
                    style:
                        AppTextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                            .style,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
