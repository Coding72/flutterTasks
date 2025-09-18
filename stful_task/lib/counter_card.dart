import 'package:flutter/material.dart';

//final GlobalKey<ShowSumState> showSumStateKey = GlobalKey<ShowSumState>();

class CounterCard extends StatefulWidget {
  final GlobalKey<ShowSumState> showSumKey;

  const CounterCard({super.key, required this.showSumKey});

  @override
    State<CounterCard> createState(){ return CounterCard1State(); }
}

class CounterCard1State extends State<CounterCard> {
  final GlobalKey<ShowSumState> widgetBKey = GlobalKey<ShowSumState>();

  int _counter = 0;

  int get currentSum => _counter;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $_counter'),
            ElevatedButton(
              onPressed: () { 
                setState((){ _counter = _counter + 1; });          
                widget.showSumKey.currentState?.incCounter();
              },
              child: const Text('Click Me'),
            ),
            //ShowSum(key: widgetBKey),
          ],
        ),
      ),
    );
  }
}

class ShowSum extends StatefulWidget {
  
  //final GlobalKey<ShowSumState> key;
  // final ValueKey<String> textKey = ValueKey<String>("text_widget_key");
  //final GlobalKey<ShowSumState> textKey = GlobalKey<ShowSumState>();

  //const CounterCard1(this.key) : super(key: key);

  const ShowSum({super.key});

  @override
    State<ShowSum> createState() { return ShowSumState(); }
}

class ShowSumState extends State<ShowSum> {
  int _counter = 0;

  void incCounter(){ 
    setState(() {
      _counter++;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Summe: $_counter'),
          ]
        )
      )
    );
  }
}