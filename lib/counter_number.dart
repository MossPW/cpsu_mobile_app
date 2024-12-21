import 'package:flutter/material.dart';

class CouterNumberApp extends StatefulWidget {
  const CouterNumberApp({super.key});

  @override
  State<CouterNumberApp> createState() => _CouterNumberAppState();
}

class _CouterNumberAppState extends State<CouterNumberApp> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Counter Value:",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            "$counter",
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: increment, child: const Text("+ Increment")),
              const SizedBox(width: 10),
              ElevatedButton(
                  onPressed: decrement, child: const Text("- Decrement")),
              const SizedBox(width: 10),
              ElevatedButton(onPressed: reset, child: const Text("Reset")),
            ],
          )
        ],
      ),
    );
  }
}
