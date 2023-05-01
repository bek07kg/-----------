import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6FF00),
      appBar: AppBar(
        backgroundColor: Color(0xff76FF03),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Тапшырма 3",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: "Mynerve",
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/diamond3.png",
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
