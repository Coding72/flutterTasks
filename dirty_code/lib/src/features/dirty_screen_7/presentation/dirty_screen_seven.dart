import 'package:flutter/material.dart';

class DirtyScreenSeven extends StatelessWidget {
  const DirtyScreenSeven({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #7"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Box(label: 'Stern', icon: Icons.star),
            Box(label: 'Herz', icon: Icons.favorite),
            Box(label: 'Haus', icon: Icons.home),
            Box(label: 'Koffer', icon: Icons.work),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String label;
  final IconData icon;
  const Box ({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return
    Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 50),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(fontSize: 22)),
            Text('Das ist ein $label', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}