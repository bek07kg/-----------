import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_text_styles.dart';
import 'package:bmi_calculator/constants/app_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.height,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String height;
  final double value;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppText.height,
          style: AppTextStyles.textGreyF22,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              height,
              style: AppTextStyles.textWhiteF50,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 1.0),
              child: Text(
                AppText.cm,
                style: AppTextStyles.textWhiteF22,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              max: 300,
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.white,
              thumbColor: AppColors.red,
            ),
          ),
        ),
      ],
    );
  }
}
