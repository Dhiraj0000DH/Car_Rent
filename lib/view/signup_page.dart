import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),

            // Logo
            Center(
              child: Image.asset(
                'assets/images/Logo.png',
                height: 170,
              ),
            ),

            const SizedBox(height: 20),

            // Title
            const Center(
              child: Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 20),

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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white),
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
                  iconPath: 'assets/icon/facebook.jpeg',
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                _buildSocialButton(
                  label: 'Google',
                  iconPath: 'assets/icon/Gooogle.jpeg',
                  onPressed: () {},
                ),
                const SizedBox(height: 15),
                _buildSocialButton(
                  label: 'Microsoft',
                  iconPath: 'assets/icon/microsoft.jpeg',
                  onPressed: () {},
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Reusable TextField Widget
  static Widget _buildTextField({
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
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  // Reusable Social Button Widget
  static Widget _buildSocialButton({
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
