import 'package:flutter/material.dart';
import 'package:weather_app/constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle city = TextStyle(
    color: AppColors.white,
    fontSize: 35,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle temp = TextStyle(
    color: AppColors.white,
    fontSize: 65,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle cityBtn = TextStyle(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
