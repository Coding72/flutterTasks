import 'package:flutter/material.dart';

class DirtyScreenEighteen extends StatelessWidget {
  const DirtyScreenEighteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #18"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '4 + 5 = 9',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Simple Addition',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '7 + 3 = 10',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Another Addition',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '6 + 2 = 8',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Yet Another Addition',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '5 + 5 = 10',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Addition Again',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
