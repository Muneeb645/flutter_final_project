import 'package:flutter/material.dart';

class Onboading1 extends StatefulWidget {
  const Onboading1({super.key});

  @override
  State<Onboading1> createState() => _Onboading1State();
}

class _Onboading1State extends State<Onboading1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Skip',
              style: TextStyle(fontSize: 14, color: Color(0xFF108244)),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 245,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://img.magnific.com/free-photo/photorealistic-wooden-house-with-timber-structure_23-2151302621.jpg?semt=ais_test_b&w=740&q=80',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
