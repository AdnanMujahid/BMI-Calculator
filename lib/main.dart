import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF0A0E21),
        // floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //   backgroundColor: Colors.green,
        //   foregroundColor: Colors.black,
        //   hoverColor: Colors.red,
        //   splashColor: Colors.white,
        // ),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        textTheme: TextTheme(
         bodyLarge: TextStyle(color: Colors.white), // Define bodyText1 style
        ),
      ),
      home: InputPage(),
    );
  }
}

