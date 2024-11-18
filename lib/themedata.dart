import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:arthub_demo/bottom_nav_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.pink, 
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.pink,
          )
      )
    );
  }
}