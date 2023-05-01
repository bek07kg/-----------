import 'package:flutter/material.dart';

class HomeTwo extends StatelessWidget {
  HomeTwo({Key? key, required this.count2}) : super(key: key);

  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Тапшырма 2",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Text(
                "Сан : $count2",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
