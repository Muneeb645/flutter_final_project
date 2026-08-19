import 'package:flutter/material.dart';

class SplashActivity extends StatelessWidget {
  const SplashActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF108244)),
      body: Column(children: [Text('LuxeyLine')]),
    );
  }
}
