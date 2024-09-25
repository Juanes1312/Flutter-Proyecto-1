import 'package:flutter/material.dart';
import 'package:intro/view/screens/operations_screen.dart';
import 'view/screens/counter_screen.dart';

void main() {
  runApp(const IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OperationsScreen(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple
      ),
    );
  }
}
// prueba