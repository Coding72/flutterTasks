import 'package:flutter/material.dart';

class DirtyScreenTwentyOne extends StatelessWidget {
  const DirtyScreenTwentyOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #21"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Transform.rotate(
                angle: 3.14159, // Rotate 180 degrees
                child: const SizedBox(
                  width: 300,
                  child: Card(
                    color: Colors.cyan,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('5 + 3 = 8', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 8),
                          Text('Simple Addition',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Transform.rotate(
                angle: 3.14159, // Rotate 180 degrees
                child: const SizedBox(
                  width: 300,
                  child: Card(
                    color: Colors.cyan,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('10 - 2 = 8', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 8),
                          Text('Simple Subtraction',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Transform.rotate(
                angle: 3.14159, // Rotate 180 degrees
                child: const SizedBox(
                  width: 300,
                  child: Card(
                    color: Colors.cyan,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('4 * 2 = 8', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 8),
                          Text('Simple Multiplication',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Transform.rotate(
                angle: 3.14159, // Rotate 180 degrees
                child: const SizedBox(
                  width: 300,
                  child: Card(
                    color: Colors.cyan,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('16 / 2 = 8', style: TextStyle(fontSize: 24)),
                          SizedBox(height: 8),
                          Text('Simple Division',
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
