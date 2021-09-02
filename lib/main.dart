import 'package:bmi_calculator/screens/result.dart';
import 'package:bmi_calculator/screens/suggestions4.dart';
import 'package:flutter/material.dart';
import 'screens/input.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'screens/suggestions1.dart';
import 'screens/suggestions2.dart';
import 'screens/suggestions3.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
        '/suggestions1': (context) => SuggestionsPage1(),
        '/suggestions2': (context) => SuggestionsPage2(),
        '/suggestions3': (context) => SuggestionsPage3(),
        '/suggestions4': (context) => SuggestionsPage4(),
      },
    );
  }
}
