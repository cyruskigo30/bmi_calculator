import 'package:flutter/material.dart';

import 'package:bmi/theme/colors.dart';

import 'pages/input_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: whiteColor,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: whiteColor,
            fontSize: 18,
          ),
        ),
      ),
      home: const InputPage(),
    );
  }
}
