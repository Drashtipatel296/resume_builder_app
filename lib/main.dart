import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/homescreen.dart';
import 'package:resume_builder_app/view/screens/splashScreen.dart';
import 'package:resume_builder_app/view/screens/loginscreen.dart';


void main(){
  runApp(const ResumeApp());
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) =>  const SplashScreen(),
        '/login' : (context) =>  const LoginScreen(),
        '/home' : (context) => const HomeScreen(),
      },
    );
  }
}

