import 'package:flutter/material.dart';

class DirtyScreenFourteen extends StatelessWidget {
  const DirtyScreenFourteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #14"),
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
                    Icon(Icons.movie, size: 50),
                    SizedBox(height: 8),
                    Text('The Shawshank Redemption',
                        style: TextStyle(fontSize: 22)),
                    Text('1994', style: TextStyle(fontSize: 16)),
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
                    Icon(Icons.movie, size: 50),
                    SizedBox(height: 8),
                    Text('The Godfather', style: TextStyle(fontSize: 22)),
                    Text('1972', style: TextStyle(fontSize: 16)),
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
                    Icon(Icons.movie, size: 50),
                    SizedBox(height: 8),
                    Text('The Dark Knight', style: TextStyle(fontSize: 22)),
                    Text('2008', style: TextStyle(fontSize: 16)),
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
                    Icon(Icons.movie, size: 50),
                    SizedBox(height: 8),
                    Text('Pulp Fiction', style: TextStyle(fontSize: 22)),
                    Text('1994', style: TextStyle(fontSize: 16)),
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
