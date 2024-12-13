import 'package:car_rent/view/dashboard.dart';
import 'package:car_rent/view/onboarding_screen.dart';
import 'package:car_rent/view/signup_page.dart';
import 'package:car_rent/view/splash_screen.dart';
// Example for a home page
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onbaording': (context) => const OnBoardingScreen(),
        '/signup': (context) => const SignUpPage(),
        '/dashboard': (context) => const Dashboard(),
        // '/home': (context) => const HomePage(), // Example additional route
      },
    );
  }
}
