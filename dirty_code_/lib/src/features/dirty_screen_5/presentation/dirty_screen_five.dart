import 'package:flutter/material.dart';

class DirtyScreenFive extends StatelessWidget {
  const DirtyScreenFive({super.key});
  @override
  Widget build(BuildContext context) {
    //List<Color> colors = [Colors.red, Colors.pink, Colors.purple, Colors.deepPurple];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #5"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //for (var color in colors) Box(iterator: colors.indexOf(color) + 1, color: color), // dann kann SingleChildScrollView nicht const sein
            Box(iterator: 1, color: Colors.red),
            Box(iterator: 2, color: Colors.pink),
            Box(iterator: 3, color: Colors.purple),
            Box(iterator: 4, color: Colors.deepPurple),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final int iterator;
  final Color color;
  const Box ({super.key, required this.iterator, required this.color});

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
          const Icon(Icons.favorite, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            "Favorite $iterator",
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
