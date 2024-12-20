import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          // Positioned.fill(
          //   child: Image.asset(
          //     'assets/images/Logo.png', // Replace with your splash background image
          //     fit: BoxFit.cover,
          //   ),
          // ),

          // Semi-transparent overlay
          Positioned.fill(
            child: Container(
              color: Colors.white,
            ),
          ),

          // Center Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // App Logo (use your logo widget here)
                Image.asset(
                  'assets/images/Logo.png',
                  width: 250,
                  height: 150,
                ),

                // const SizedBox(height: 20), // Space between logo and tagline

                // App Name or Tagline
                const Text(
                  'Car Rental System',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 10),

                // Tagline
                const Text(
                  'Drive Your Dreams',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 50),

                // Navigate to Onboarding Screen Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/onbaording');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 14),
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    shadowColor: Colors.blueAccent.withOpacity(0.4),
                    elevation: 8,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
