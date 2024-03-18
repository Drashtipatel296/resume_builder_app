import 'package:flutter/material.dart';
import 'package:resume_builder_app/view/screens/homescreen.dart';
import 'package:resume_builder_app/view/screens/splashScreen.dart';
import 'package:resume_builder_app/view/screens/loginscreen.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/splash' : (context) =>  const SplashScreen(),
        '/login' : (context) =>  const LoginScreen(),
        '/home' : (context) => const HomeScreen(),
      },
    );
  }
}

