import 'dart:math';

import 'package:bmi_calculator/components/alert_dialog.dart';
import 'package:bmi_calculator/components/calculator_btn.dart';
import 'package:bmi_calculator/components/slider.dart';
import 'package:bmi_calculator/components/status_card.dart';
import 'package:bmi_calculator/components/weight_age.dart';
import 'package:bmi_calculator/constants/app_colors.dart';
import 'package:bmi_calculator/constants/app_texts.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isFemaleHome = false;
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          AppText.appBarTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                      icon: Icons.male,
                      text: AppText.male,
                      isFemale: !isFemaleHome,
                      onTap: () {
                        setState(() {
                          isFemaleHome = false;
                        });
                      }),
                  const SizedBox(width: 10),
                  StatusCard(
                      icon: Icons.female,
                      text: AppText.female,
                      isFemale: isFemaleHome,
                      onTap: () {
                        setState(() {
                          isFemaleHome = true;
                        });
                      }),
                ],
              ),
            ),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: AppColors.cardBgColor,
                child: SliderWidget(
                    height: height.toStringAsFixed(0),
                    value: height,
                    onChanged: (double value) {
                      setState(() {
                        height = value;
                      });
                    }),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  WeightAge(
                    text: AppText.weight,
                    value: weight,
                    remove: (svalue) {
                      setState(() {
                        weight = svalue;
                      });
                    },
                    add: (svalue) {
                      setState(() {
                        weight = svalue;
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  WeightAge(
                    text: AppText.age,
                    value: age,
                    remove: (svalue) {
                      setState(() {
                        age = svalue;
                      });
                    },
                    add: (svalue) {
                      setState(() {
                        age = svalue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorBtn(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            showMyDialog(
              context: context,
              text: "Сенин салмагын аз экен. Кобуроок же",
            );
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
                context: context, text: "Сенин салмагын жакшы. Молодец.");
          } else if (result > 24.9) {
            showMyDialog(
                context: context,
                text:
                    "Сенде ашыкча салмак коп. Озуно жакшы кара. Спорт менен алектен");
          } else {
            showMyDialog(
                context: context, text: "Маалымат алууда катачылыктар бар");
          }
        },
      ),
    );
  }
}
