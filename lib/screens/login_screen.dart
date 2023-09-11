import 'package:flutter/material.dart';
import 'package:login_and_signup/screens/signup_screen.dart';

import 'package:login_and_signup/services/auth_service.dart';
import 'package:login_and_signup/widgets/custom_textfield.dart';
import 'package:login_and_signup/widgets/gradient_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  void loginUser() {
    authService.signInUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/images/wallpaper.png'),
            const Text(
              "Login",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                obscureText: false,
                controller: emailController,
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                obscureText: true,
                controller: passwordController,
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 40),
            GradientButton(text: 'Login', onPressed: loginUser),
            // ElevatedButton(
            //   onPressed: loginUser,
            //   style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(Colors.blue),
            //     textStyle: MaterialStateProperty.all(
            //       const TextStyle(color: Colors.white),
            //     ),
            //     minimumSize: MaterialStateProperty.all(
            //       Size(MediaQuery.of(context).size.width / 2.5, 50),
            //     ),
            //   ),
            //   child: const Text(
            //     "Login",
            //     style: TextStyle(color: Colors.white, fontSize: 16),
            //   ),
            // ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                );
              },
              child: const Text("Don't have an account? Tap here to Sign-Up"),
            ),
          ],
        ),
      ),
    );
  }
}
