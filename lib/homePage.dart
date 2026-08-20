import 'package:flutter/material.dart';
import 'package:flutter_final_project/Onboarding/getStarted.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();

  int currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      'image': 'https://images.unsplash.com/photo-1600607687920-4e2a09cf159d',
      'title': 'Find your perfect rental on Redfin',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'image': 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      'title': 'Sell for top dollar and save thousands on fees',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
    {
      'image': 'https://images.unsplash.com/photo-1600566753086-00f18fb6b3ea',
      'title': 'Local expertise for luxury homes',
      'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    },
  ];

  void nextPage() {
    if (currentPage < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const GetStartedScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          itemCount: pages.length,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Skip
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GetStartedScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Color(0xff07883F)),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Property Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      pages[index]['image']!,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(pages.length, (dotIndex) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: 6,
                        width: currentPage == dotIndex ? 18 : 6,
                        decoration: BoxDecoration(
                          color: currentPage == dotIndex
                              ? const Color(0xff07883F)
                              : Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 30),

                  // Title
                  Text(
                    pages[index]['title']!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Description
                  Text(
                    pages[index]['description']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                  ),

                  const Spacer(),

                  // Continue button
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: nextPage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff07883F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Text(
                        currentPage == pages.length - 1
                            ? 'Get Started'
                            : 'Continue',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
