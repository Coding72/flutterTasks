import 'package:flutter/material.dart';

class DirtyScreenTwentyTwo extends StatelessWidget {
  const DirtyScreenTwentyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #22"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text('Volume', style: TextStyle(fontSize: 20)),
                  Slider(
                    value: 0.5,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text('Brightness', style: TextStyle(fontSize: 20)),
                  Slider(
                    value: 0.7,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text('Contrast', style: TextStyle(fontSize: 20)),
                  Slider(
                    value: 0.3,
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
