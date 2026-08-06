import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const AstraAI());
}

class AstraAI extends StatelessWidget {
  const AstraAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AstraAI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}