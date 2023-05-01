import 'package:bmi_calculator/views/home_view.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bmi Calculator",
      home: HomeView(),
    );
  }
}
