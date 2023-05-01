import 'package:flutter/material.dart';
import 'package:login_page_model/pages/home_page.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login page and Model",
      home: HomePage(),
    );
  }
}
