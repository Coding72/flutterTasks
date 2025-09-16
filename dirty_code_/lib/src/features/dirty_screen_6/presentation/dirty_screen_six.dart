import 'package:flutter/material.dart';

class DirtyScreenSix extends StatelessWidget {
  const DirtyScreenSix({super.key});
  @override
  Widget build(BuildContext context) {//yellow amber orange deepOrange
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #6"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Box(text: "Warning 1", color: Colors.yellow),
            Box(text: "Warning 2", color: Colors.amber),
            Box(text: "Warning 3", color: Colors.orange),
            Box(text: "Warning 4", color: Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String text;
  final Color color;
  const Box ({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return            
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.warning, color: Colors.black),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      );
  }
}
