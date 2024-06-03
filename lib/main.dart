import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/forgot_password_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
      },
    );
  }
}
