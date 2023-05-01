import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather app",
      home: HomePage(),
    );
  }
}
