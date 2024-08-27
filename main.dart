import 'package:flutter/material.dart';
import 'package:intro/views/screens/counter_screen.dart';

void main() {
  runApp(const IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
