import 'package:flutter/material.dart';

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




