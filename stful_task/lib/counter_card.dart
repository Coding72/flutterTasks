import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: 0'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterCard1 extends StatefulWidget {
  const CounterCard1({super.key});

  @override
    State<CounterCard1> createState(){ return CounterCard1State(); }
}

class CounterCard1State extends State<CounterCard1> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $counter'),
            ElevatedButton(
              onPressed: () { counter = counter + 1; setState((){}); },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
