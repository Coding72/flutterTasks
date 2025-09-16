import 'package:flutter/material.dart';

// import 'package:dirty_code/src/features/dirty_screen_3/presentation/widgets/container.dart';


class DirtyScreenThree extends StatelessWidget {
  const DirtyScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #3"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orangeAccent),
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(16.0),
              child: const Row(
                children: [
                  Box(label: 'Alert 1'),
                  Box(label: 'Alert 2'),
                  Box(label: 'Alert 3'),
                  Box(label: 'Alert 4'),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}

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
