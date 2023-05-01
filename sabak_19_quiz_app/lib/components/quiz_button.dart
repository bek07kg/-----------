import 'package:flutter/material.dart';
import 'package:sabak_19_quiz_app/constants/app_colors.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({Key? key, required this.quizButton, required this.press})
      : super(key: key);

  final bool quizButton;
  final void Function(bool) press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: quizButton ? AppColors.green : AppColors.red,
        ),
        onPressed: () => press(quizButton),
        child: Text(
          quizButton ? "Туура" : "Туура эмес",
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
