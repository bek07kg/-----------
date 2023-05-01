import 'package:flutter/material.dart';
import 'package:sabak_19_quiz_app/pages/home_page.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: HomePage(),
    );
  }
}
