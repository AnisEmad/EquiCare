import 'package:final_project/Screens/login_screen.dart';
import 'package:final_project/Screens/homescreen.dart';
import 'package:final_project/Screens/add_horse.dart';
import 'package:final_project/Screens/profile_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
