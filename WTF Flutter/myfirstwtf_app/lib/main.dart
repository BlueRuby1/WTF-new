import 'package:flutter/material.dart';
import 'package:myfirstwtf_app/bottom_navigation.dart';
import 'package:myfirstwtf_app/pages/login_page.dart';
// import 'package:myfirstwtf_app/home_page.dart';
import 'package:myfirstwtf_app/pages/onboarding_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save A Life',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context)=>OnboardingPage(),
        "/home": (context) => BottomNavigation(),
        "/login":(context) => LoginPage()
      },
      initialRoute: "/login",
      // home: BottomNavigation(),
    );
  }
}
