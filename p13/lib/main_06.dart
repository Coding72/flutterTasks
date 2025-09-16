import 'package:flutter/material.dart';

// void main() => runApp(const MyApp()); // Trash Notation
const String text01 ="test";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meine AppBar')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hallo Flutter'),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(12),
            color: Colors.blue,
            child: const Text(
              text01,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
