import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftCubik = 3;
  int rightCubik = 5;

  void press() {
    setState(() {
      leftCubik = Random().nextInt(7);
      rightCubik = Random().nextInt(7);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Тапшырма 5",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/dice_${leftCubik == 0 ? leftCubik + 1 : leftCubik}.png',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/images/dice_${rightCubik == 0 ? rightCubik + 1 : rightCubik}.png',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
