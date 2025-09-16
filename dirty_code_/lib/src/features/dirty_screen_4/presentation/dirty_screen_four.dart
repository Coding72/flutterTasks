import 'package:flutter/material.dart';

// import 'package:dirty_code/src/features/dirty_screen_4/presentation/widgets/container.dart';

class DirtyScreenFour extends StatelessWidget {
  const DirtyScreenFour({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #4"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(              
          children: [
            Box(label: 'Home', color: Colors.blueAccent, icon: Icons.home),
            Box(label: 'Work', color: Colors.greenAccent, icon: Icons.work),
            Box(label: 'School', color: Colors.orangeAccent, icon: Icons.school),
            Box(label: 'Bike', color: Colors.purpleAccent, icon: Icons.directions_bike), 
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  const Box ({super.key, required this.label, required this.color, required this.icon});

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
          Icon(icon, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

