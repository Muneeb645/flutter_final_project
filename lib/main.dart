import 'package:flutter/material.dart';
import 'package:flutter_final_project/Onboarding/splash_activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF108244)),
      debugShowCheckedModeBanner: false,
      home: SplashActivity(),
    );
  }
}
