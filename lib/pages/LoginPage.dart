import 'package:flutter/material.dart';
import 'package:pizza_app/components/My_Text_Field.dart';
import 'package:pizza_app/components/my_button.dart';
import 'package:pizza_app/auth/AuthService.dart';
import 'package:pizza_app/pages/HomePage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, required this.onTap});

  final void Function()? onTap;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
      // Navigate to HomePage upon successful login
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login Failed'),
          content: Text(e.toString()),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
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
                  // message
                  const Text(
                    "Food Delivery App",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 90),
                  // email
                  MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    focus: true,
                    obscureText:
                        false, // Typically email should not be obscured
                  ),
                  const SizedBox(height: 25),
                  // password
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    focus: false,
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  // button
                  MyButton(
                    text: "Login",
                    onTap: () => login(context),
                  ),
                  const SizedBox(height: 20),
                  // not a member
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          " Create One!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 18,
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
