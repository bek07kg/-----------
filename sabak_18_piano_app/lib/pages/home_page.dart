import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../components/black_button.dart';
import '../components/white_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text(
          "Piano App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/foto1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WhiteButton(count: 1),
                        WhiteButton(count: 2),
                        WhiteButton(count: 3),
                        WhiteButton(count: 4),
                        WhiteButton(count: 5),
                        WhiteButton(count: 6),
                        WhiteButton(count: 7),
                      ],
                    ),
                    Positioned(
                      left: 40.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BlackButton(count: 1),
                          BlackButton(count: 2),
                          BlackButton(count: 3, visible: false),
                          BlackButton(count: 4),
                          BlackButton(count: 5),
                          BlackButton(count: 6),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
