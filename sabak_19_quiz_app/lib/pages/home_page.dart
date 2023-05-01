import 'package:flutter/material.dart';
import 'package:sabak_19_quiz_app/components/quiz_button.dart';
import 'package:sabak_19_quiz_app/components/result_button.dart';
import 'package:sabak_19_quiz_app/constants/app_colors.dart';
import 'package:sabak_19_quiz_app/model/quiz_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List answers = <bool>[];
  List trueAnswers = <bool>[];
  List falseAnswers = <bool>[];

  void check(bool value) {
    if (quizzes[index].answer == value) {
      answers.add(true);
      trueAnswers.add(true);
    } else {
      answers.add(false);
      falseAnswers.add(false);
    }
    setState(() {
      if (quizzes[index] == quizzes.last) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                "Сиз бул тесттен....",
              ),
              content: Text(
                "Туура жооптор: ${trueAnswers.length}. Ката жооптор: ${falseAnswers.length} ",
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      index = 0;
                      answers.clear();
                      trueAnswers.clear();
                      falseAnswers.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: const Text(
                    "Жаныдан баштоо",
                  ),
                ),
              ],
            );
          },
        );
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Flutter боюнча тест",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizzes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            QuizButton(
              quizButton: true,
              press: (variable) {
                check(variable);
              },
            ),
            const SizedBox(height: 20),
            QuizButton(
              quizButton: false,
              press: (variable) {
                check(variable);
              },
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: 40,
              child: ListView.builder(
                itemCount: answers.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return answers[i]
                      ? const ResultButton(resultButton: true)
                      : const ResultButton(resultButton: false);
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
