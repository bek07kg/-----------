import 'package:flutter/material.dart';
import 'package:flutter_xylophone/views/home_view.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter_xylophone",
      home: HomeView(),
    );
  }
}
