import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.network(
                'data:image/webp;base64,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',
                width: 63,
                height: 52,
              ),
              const SizedBox(height: 60),

              const Text(
                'Get Started',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Text(
                "Welcome! Lets's dive in into account",
                style: TextStyle(color: Colors.grey.shade600),
              ),

              const SizedBox(height: 50),

              // Google
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Apple
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in with Apple',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // Facebook
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign in with Facebook',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Text(''),

              const Spacer(),

              // Email
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff07883F),
                  ),
                  child: const Text(
                    'Sign in with Email',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.grey),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF818898),
                        ),
                      ),
                      TextSpan(
                        text: " Signup",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xFF108244),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
