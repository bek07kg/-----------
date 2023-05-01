import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
  }) : super(key: key);

  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.textGreyF22,
            ),
            Text(
              "$value",
              style: AppTextStyles.textWhiteF50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  onPressed: () => remove(value - 1),
                  icon: Icons.remove,
                ),
                FlatButton(
                  onPressed: () => add(value + 1),
                  icon: Icons.add,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FlatButton extends StatelessWidget {
  const FlatButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.btnColor,
      foregroundColor: AppColors.white,
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 50,
      ),
    );
  }
}
