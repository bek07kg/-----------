import 'package:flutter/material.dart';
import 'package:sabak6_login_page_model/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff18FFFF),
        ),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
