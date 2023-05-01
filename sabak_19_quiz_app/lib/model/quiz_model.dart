class Quiz {
  Quiz({
    required this.question,
    required this.answer,
  });

  final String question;
  final bool answer;
}

Quiz q1 = Quiz(question: "Flutter 2017-жылы чыкканбы?", answer: true);
Quiz q2 =
    Quiz(question: "Flutter Microsoft тарабынан чыгарылганбы?", answer: false);
Quiz q3 = Quiz(question: "Flutter css тилинде жазылабы?", answer: false);
Quiz q4 = Quiz(
    question: "Flutter ди уйронуш учун dart тилин уйронуу керекпи",
    answer: true);
Quiz q5 = Quiz(question: "Flutter программалоо тилиби?", answer: false);
Quiz q6 = Quiz(question: "Flutter framework бу?", answer: true);
Quiz q7 = Quiz(question: "Flutter менен сайт жасоого болобу?", answer: true);
Quiz q8 = Quiz(
    question: "Flutter менен операциондук система туззо болобу?",
    answer: false);
Quiz q9 = Quiz(
    question: "Кыргызстандагы тиркемелелер flutter менен жазылганбы?",
    answer: true);
Quiz q10 = Quiz(question: "Дуйнодо flutter популярдуу болобу?", answer: true);

List<Quiz> quizzes = <Quiz>[q1, q2, q3, q4, q5, q6, q7, q8, q9, q10];
