import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';
import '../models/weather.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({
    super.key,
    required this.weather,
    required this.color,
    required this.text,
  });

  final Weather? weather;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          text,
          style: AppTextStyles.city,
        ),
      ),
    );
  }
}
