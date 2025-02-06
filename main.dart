import 'package:flutter/material.dart';
import 'Splash_Screen/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 77, 76, 76),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 182, 35, 35),
          elevation: 0,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
