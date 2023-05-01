import 'package:flutter/material.dart';
import 'package:sabak_19_quiz_app/constants/app_colors.dart';

class ResultButton extends StatelessWidget {
  const ResultButton({Key? key, required this.resultButton}) : super(key: key);

  final bool resultButton;

  @override
  Widget build(BuildContext context) {
    return Icon(
      resultButton ? Icons.check : Icons.close,
      color: resultButton ? AppColors.green : AppColors.red,
    );
  }
}
