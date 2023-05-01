import 'package:flutter/material.dart';
import 'package:sabak_18_piano_app/pages/home_page.dart';

class Piano extends StatelessWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Piano App",
      home: HomePage(),
    );
  }
}
