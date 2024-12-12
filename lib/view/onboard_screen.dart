import 'package:flutter/material.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Car Image as background (takes full screen height)
          Positioned.fill(
            child: Image.asset(
              'assets/images/car4.jpeg',
              fit:
                  BoxFit.cover, // Ensure the image covers the entire background
            ),
          ),

          // Semi-transparent gradient overlay for better text visibility
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),

          // Main content on top of the background
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 120), // Increased space at the top

                // Onboarding Title with modern font style and shadow for text
                const Text(
                  'Welcome to Our Car Rental Service!',
                  style: TextStyle(
                    fontSize: 36, // Larger font for more impact
                    fontWeight: FontWeight.w800, // Bold and strong font weight
                    color: Colors.white,
                    letterSpacing: 1.5, // Slightly increased letter spacing
                    fontFamily: 'Roboto', // Clean modern font family
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 3,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 20),

                // Description Text with subtle styling
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Find the best cars at unbeatable prices, with easy access and a seamless experience.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight
                          .w400, // Slightly lighter weight for description
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Get Started Button with modern style
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle the Get Started action
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 16),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      elevation: 12,
                      shadowColor: Colors.blueAccent.withOpacity(0.3),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Skip Button with modern design
                TextButton(
                  onPressed: () {
                    // Handle skip action
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500, // Lighter text style
                    ),
                  ),
                ),

                const SizedBox(height: 40), // Add spacing if needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
