import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homeservice/pages/secpage.dart';

class FirstPages extends StatefulWidget {
  const FirstPages({super.key});

  @override
  State<FirstPages> createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Secpages(),));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0F1621),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              height: 100,
            ),
            Text(
              "Biashara Konneckt",
              style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
