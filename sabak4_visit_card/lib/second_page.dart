import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC6FF00),
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Color(0xff76FF03),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Тапшырма 3",
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
