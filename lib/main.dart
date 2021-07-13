import 'package:flutter/material.dart';
import 'screens/home_page.dart';
// import 'screens/weather_page.dart';

void main() => runApp(Weather1());

class Weather1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      title: 'Weather1',
      home: HomePage(),
      // home: WeatherPage(),
    );
  }

}

