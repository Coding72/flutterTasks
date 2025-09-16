import 'package:flutter/material.dart';

class DirtyScreenEight extends StatelessWidget {
  const DirtyScreenEight({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #8"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Box(food: 'Pizza', number: 1),
            Box(food: 'Pasta', number: 4),
            Box(food: 'Lasagne', number: 5),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final int number;
  final String food;
  const Box ({super.key, required this.food, required this.number});

  @override
  Widget build(BuildContext context) {
    return
    Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding:const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(food, style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 8),
            Text('$number / 5', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
