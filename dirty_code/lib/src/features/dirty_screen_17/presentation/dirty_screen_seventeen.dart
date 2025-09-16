import 'package:flutter/material.dart';

class DirtyScreenSeventeen extends StatelessWidget {
  const DirtyScreenSeventeen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #17"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Row(
                children: [
                  Icon(Icons.movie, size: 50, color: Colors.white),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Inception',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        '2010',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Row(
                children: [
                  Icon(Icons.movie, size: 50, color: Colors.white),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Interstellar',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        '2014',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Row(
                children: [
                  Icon(Icons.movie, size: 50, color: Colors.white),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Matrix',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        '1999',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Row(
                children: [
                  Icon(Icons.movie, size: 50, color: Colors.white),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Lion King',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Text(
                        '1994',
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                      ),
                    ],
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
