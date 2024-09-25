import 'package:flutter/material.dart';

import '../widgets/custom_action_button.dart';

class OperationsScreen extends StatefulWidget {
  const OperationsScreen({super.key});

  @override
  State<OperationsScreen> createState() => _OperationsScreenState();
}

class _OperationsScreenState extends State<OperationsScreen> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SymbolWithLetters(),
            Text(
              '$cnt',
              style:
                  const TextStyle(fontSize: 100, fontWeight: FontWeight.w100),
            ),
            Text(
              cnt != 0 ? 'Clicks' : 'Click',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomActionButon(
            icon: Icons.refresh_outlined,
            onPressed: () {
              cnt = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomActionButon(
            icon: Icons.exposure_plus_1,
            onPressed: () {
              cnt++;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomActionButon(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              cnt--;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
