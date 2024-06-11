import 'package:flutter/material.dart';
import 'package:homeservice/authscreeen/signin.dart';
import 'package:homeservice/category/acoffer.dart';
import 'package:homeservice/pages/firstpage.dart';
import 'package:homeservice/screen/page1.dart';
import 'package:homeservice/screen/page2.dart';
import 'package:homeservice/screen/search.dart';

import 'map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FirstPages(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light, // Use dark theme to match the image
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0xFF1F1F1F), // Dark background color
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

