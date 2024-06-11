import 'package:flutter/material.dart';
import 'package:homeservice/pages/forthpage.dart';

import '../authscreeen/signin.dart';

class ThirdPages extends StatefulWidget {
  const ThirdPages({super.key});

  @override
  State<ThirdPages> createState() => _ThirdPagesState();
}

class _ThirdPagesState extends State<ThirdPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0F1621),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/pink.png"),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  onTap:  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));

                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green.shade300),
                    child: Center(
                        child: Text(
                          "Skip",
                          style: TextStyle(fontSize: 15),
                        )),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Image.asset(
                "assets/face2.png",
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1,
              ),
              Text(
                " Plumber & expart\n       nearby you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum is a placeholder text commonly\n             used to demonstrate the visual.",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForthPages(),));
                },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
