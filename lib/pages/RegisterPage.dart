import 'package:flutter/material.dart';
import 'package:pizza_app/auth/AuthService.dart';
import 'package:pizza_app/components/My_Text_Field.dart';
import 'package:pizza_app/components/my_button.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key, required this.onTap});

  final void Function()? onTap;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();

  final AuthService authService = AuthService();

  void register(BuildContext context) async {
    if (cPasswordController.text == passwordController.text) {
      try {
        await authService.signUpWithEmailPassword(
            emailController.text, passwordController.text);
        // Navigate to next page or show success message
      } catch (e) {
        // Handle sign-up error
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Failed to sign up: $e')));
      }
    } else {
      // Show password mismatch error
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Passwords do not match')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pizza.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 165),
                  // Message
                  const Text(
                    "Food Delivery App",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 90),
                  // Email
                  MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    focus: true,
                    obscureText: false,
                  ),
                  const SizedBox(height: 25),
                  // Password
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    focus: false,
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  // Confirm Password
                  MyTextField(
                    controller: cPasswordController,
                    hintText: "Confirm Your Password",
                    focus: false,
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  // Button
                  MyButton(text: "Register", onTap: () => register(context)),
                  const SizedBox(height: 25),
                  // Not a member
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          " Log in!",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
