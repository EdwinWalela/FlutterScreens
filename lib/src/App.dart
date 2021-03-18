import 'package:flutter/material.dart';
// import 'screens/login_screen..dart';
import 'screens/registration_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      home: RegistrationScreen(),
    );
  }
}
