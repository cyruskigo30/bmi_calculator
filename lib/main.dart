import 'package:bmi/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:bmi/theme/colors.dart';
import 'pages/input_page.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI Calculator",
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: 'Comfortaa',
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: kWhiteColor,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: kWhiteColor,
            fontSize: 18,
          ),
        ),
      ),
      routes: routes,
      initialRoute: InputPage.routeName,
    );
  }
}
