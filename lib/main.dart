import 'package:flutter/material.dart';
import 'package:login_and_signup/pallete.dart';
import 'package:login_and_signup/providers/user_provider.dart';
import 'package:login_and_signup/screens/home_screen.dart';
import 'package:login_and_signup/screens/signup_screen.dart';
import 'package:login_and_signup/services/auth_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: Provider.of<UserProvider>(context).user.token.isEmpty
          ? const SignupScreen()
          : HomeScreen(),
    );
  }
}

//  Provider.of<UserProvider>(context).user.token.isEmpty
//           ? const SignupScreen()
//           : HomeScreen(),
