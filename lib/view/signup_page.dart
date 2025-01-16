import 'package:flutter/material.dart';

import 'login_page.dart'; // Import the Login page

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),

                // Title
                const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Subtitle
                const Center(
                  child: Text(
                    'Create your account to get started!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // Full Name Input Field
                _buildTextField(
                  label: 'Full Name',
                  hintText: 'Enter your full name',
                ),
                const SizedBox(height: 20),

                // Email Input Field
                _buildTextField(
                  label: 'Email',
                  hintText: 'Enter your email',
                ),
                const SizedBox(height: 20),

                // Password Input Field
                _buildTextField(
                  label: 'Password',
                  hintText: 'Enter your password',
                  isPassword: true,
                ),
                const SizedBox(height: 20),

                // Confirm Password Input Field
                _buildTextField(
                  label: 'Confirm Password',
                  hintText: 'Re-enter your password',
                  isPassword: true,
                ),
                const SizedBox(height: 30),

                // Sign Up Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle sign-up action
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 14,
                      ),
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // Divider with "OR"
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 20),

                // Social Sign Up Buttons
                Column(
                  children: [
                    _buildSocialButton(
                      label: 'Sign Up with Facebook',
                      iconPath: 'assets/icon/facebook.jpeg',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 15),
                    _buildSocialButton(
                      label: 'Sign Up with Google',
                      iconPath: 'assets/images/logo of google.png',
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Login Redirect
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigate to login page
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable TextField Widget
  Widget _buildTextField({
    required String label,
    required String hintText,
    bool isPassword = false,
  }) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        filled: true,
        fillColor: Colors.grey[100],
        labelStyle: const TextStyle(
          color: Colors.black87,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  // Reusable Social Button Widget
  Widget _buildSocialButton({
    required String label,
    required String iconPath,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.grey),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath, height: 24),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
