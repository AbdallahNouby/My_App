import 'dart:async';
import 'package:course/Home_Screen/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'dart:html';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 59, 59, 59),
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Text(
            "NB_Movies",
            style: TextStyle(
                color: const Color.fromARGB(255, 203, 148, 28),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
