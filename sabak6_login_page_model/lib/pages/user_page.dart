import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Text(
          "User Page",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
