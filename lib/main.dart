import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo_3',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
        home: GreetingWidget());
  }
}

// class GreetingWidget extends StatelessWidget {
//   final String name;
//   const GreetingWidget({super.key, required this.name});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Text(
//       'Hello, $name',
//       style: const TextStyle(fontSize: 24),
//     )));
//   }
// }

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TestDemo2')),
      body: const Center(
        child: SizedBox(
          height: 50.0,
        ),
      ),
    );
  }
}
