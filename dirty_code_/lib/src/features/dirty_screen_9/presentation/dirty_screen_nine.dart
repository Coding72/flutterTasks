import 'package:flutter/material.dart';

class DirtyScreenNine extends StatelessWidget {
  const DirtyScreenNine({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #9"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('4', style: TextStyle(fontSize: 24)),
                  Text(' + ', style: TextStyle(fontSize: 24)),
                  Text('5', style: TextStyle(fontSize: 24)),
                  Text(' = ', style: TextStyle(fontSize: 24)),
                  Text('9', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('3', style: TextStyle(fontSize: 24)),
                  Text(' + ', style: TextStyle(fontSize: 24)),
                  Text('3', style: TextStyle(fontSize: 24)),
                  Text(' = ', style: TextStyle(fontSize: 24)),
                  Text('6', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('2', style: TextStyle(fontSize: 24)),
                  Text(' + ', style: TextStyle(fontSize: 24)),
                  Text('8', style: TextStyle(fontSize: 24)),
                  Text(' = ', style: TextStyle(fontSize: 24)),
                  Text('10', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('7', style: TextStyle(fontSize: 24)),
                  Text(' + ', style: TextStyle(fontSize: 24)),
                  Text('1', style: TextStyle(fontSize: 24)),
                  Text(' = ', style: TextStyle(fontSize: 24)),
                  Text('8', style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
