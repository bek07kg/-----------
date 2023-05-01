import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_text_styles.dart';
import 'package:bmi_calculator/constants/app_texts.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.bgColor,
          title: const Text(
            AppText.appBarTitle,
            style: AppTextStyles.textGreyF22,
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  text,
                  style: AppTextStyles.textWhiteF18,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Кайра эсепте!")),
          ],
        );
      });
}
