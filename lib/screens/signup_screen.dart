import 'package:flutter/material.dart';
import 'package:login_and_signup/widgets/custom_textfield.dart';
import 'package:login_and_signup/screens/login_screen.dart';
import 'package:login_and_signup/services/auth_service.dart';
import 'package:login_and_signup/widgets/gradient_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final AuthService authService = AuthService();

  void signupUser() {
    authService.signUpUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/wallpaper.png"),
          //     fit: BoxFit.fitHeight,
          //     opacity: 0.7,
          //   ),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              // Image.asset('assets/images/signin_balls.png'),
              const Text(
                "Weather App",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              const Text(
                "Signup",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextField(
                  obscureText: false,
                  controller: nameController,
                  hintText: 'Enter your name',
                ),
              ),
              const SizedBox(height: 20),
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
              GradientButton(text: 'Sign Up', onPressed: signupUser),
              // ElevatedButton(
              //   onPressed: signupUser,
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
              //     "Sign up",
              //     style: TextStyle(color: Colors.white, fontSize: 16),
              //   ),
              // ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text('Signed Up Already? Tap here to Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
