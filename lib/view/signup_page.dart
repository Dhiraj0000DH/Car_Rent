import 'package:flutter/material.dart';
import 'login_page.dart'; // Import the Login page

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/car4.jpeg', // Replace with your car background image
              fit: BoxFit.cover,
            ),
          ),

          // Semi-transparent overlay for better readability
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
            ),
          ),

          // Foreground Content (Sign-Up UI)
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),

                // Title
                const Center(
                  child: Text(
                    'Create a New Account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                // Full Name Input Field
                _buildTextField(
                    label: 'Full Name', hintText: 'Enter your full name'),

                const SizedBox(height: 20),

                // Email Input Field
                _buildTextField(label: 'Email', hintText: 'Enter your email'),

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

                const SizedBox(height: 20),

                // Sign Up Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle sign-up action
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 14),
                      backgroundColor: Colors.blueAccent, // Custom button color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      shadowColor: Colors.blueAccent.withOpacity(0.4),
                      elevation: 8,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // Divider with "Sign up with"
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Sign up with',
                        style: TextStyle(color: Colors.grey),
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
                      label: 'Facebook',
                      iconPath:
                          'assets/icon/facebook.jpeg', // Replace with Facebook icon
                      onPressed: () {},
                    ),
                    const SizedBox(height: 15),
                    _buildSocialButton(
                      label: 'Google',
                      iconPath:
                          'assets/icon/Gooogle.jpeg', // Replace with Google icon
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
                      const Text('Already have an account? ',
                          style: TextStyle(color: Colors.grey)),
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
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Reusable TextField Widget
  Widget _buildTextField({
    required String label,
    required String hintText,
    bool isPassword = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Colors.grey),
          labelStyle: const TextStyle(color: Colors.black),
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
            Text(label, style: const TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
