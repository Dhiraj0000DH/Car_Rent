import 'package:flutter/material.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'About Us Page\nLearn More About Our Services!',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
      ),
    );
  }
}
