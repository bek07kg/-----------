import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_text_styles.dart';
import 'package:bmi_calculator/constants/app_texts.dart';
import 'package:flutter/material.dart';

class CalculatorBtn extends StatelessWidget {
  const CalculatorBtn({Key? key, required this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        color: AppColors.red,
        child: const Center(
          child: Text(
            AppText.calculator,
            style: AppTextStyles.textWhiteF26,
          ),
        ),
      ),
    );
  }
}
