import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String label;
  const Box ({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.orangeAccent),
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          const Icon(Icons.warning),
          const SizedBox(
            width: 8,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    )   ;
  }
}










