import 'package:expiry_tracker/pages/signin.dart';
import 'package:expiry_tracker/pages/signup.dart';
import 'package:expiry_tracker/screens/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expiry Tracker App',
      theme: getTheme(context),
      home: OnBoarding(),
      initialRoute: "/",
      routes: {
        "/login": (context) => SignIn(),
        "/signup": (context) => SignUp(),
      },
    );
  }

  ThemeData getTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Ubuntu',
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        titleSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          fontFamily: 'Ubuntu',
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          fontFamily: 'Ubuntu',
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 25.0,
          fontFamily: 'Ubuntu',
        ),
      ),
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25.0,
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}