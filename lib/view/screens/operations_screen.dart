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
          leading: IconButton(
            onPressed: () {
              cnt = 0;
              setState(() {});
            },
            icon: const Icon(Icons.refresh_outlined),
          ),
          actions: [
            IconButton(
              onPressed: () {
                cnt = 0;
                setState(() {});
              },
              icon: const Icon(Icons.refresh_outlined),
            ),
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$cnt',
              style:
                  const TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
            ),
            const Text(
              'Clicks',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomActionButon(
            icon: Icons.ads_click_outlined,
            onPressed: () {
              cnt=0;
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