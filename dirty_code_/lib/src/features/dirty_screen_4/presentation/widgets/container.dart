import 'package:flutter/material.dart';

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
