import 'package:flutter/material.dart';

// import 'package:dirty_code/src/features/dirty_screen_2/presentation/widgets/container.dart';

class DirtyScreenTwo extends StatelessWidget {
  const DirtyScreenTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #2"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Box(title: 'Box #1'),
            Box(title: 'Box #2'),
            Box(title: 'Box #3'),
            Box(title: 'Box #4'),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String title;
  const Box ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return            
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.greenAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.eco),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}