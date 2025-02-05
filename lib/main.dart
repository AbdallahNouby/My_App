import 'package:flutter/material.dart';
import 'Splash_Screen.dart';

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
        scaffoldBackgroundColor: Colors.grey,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 11, 49, 113),
          elevation: 0,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
