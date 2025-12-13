import 'package:flutter/material.dart';
import 'package:video_task/pages/login.dart';
import 'package:video_task/pages/signup.dart';
import 'package:video_task/pages/task1.dart';
import 'package:video_task/pages/task2.dart';
import 'package:video_task/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Welcome(),
        "/login": (context) => const Login(),
        "/signup": (context) => const Signup(),
        "/task2": (context) => const Task2(),
        "/task1": (context) => const Task1()
      },
    );
  }
}
