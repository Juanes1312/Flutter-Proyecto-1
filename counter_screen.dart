import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$cnt',
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
            ),
            const Text(
              'sobelo',
              style: TextStyle(fontSize: 25),
            ),
            const Text('con morro'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cnt++;
          setState(() {});
        },
        child: const Icon(Icons.accessible_forward_rounded),
      ),
    );
  }
}
