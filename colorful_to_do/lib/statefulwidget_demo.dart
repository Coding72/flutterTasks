import 'package:flutter/material.dart';

class DemoStatefulWidget extends StatefulWidget {
  const DemoStatefulWidget({super.key});

  @override
  State<DemoStatefulWidget> createState() => _DemoStatefulWidgetState();
}

class _DemoStatefulWidgetState extends State<DemoStatefulWidget> {
  // Zustände
  int counter = 0;
  bool isTrue = false;

  void setToGreenAndIncrement() {
    setState(() {
      counter++;
      isTrue = !isTrue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Diese Variable ist true und wird grün",
          style: TextStyle(color: isTrue ? Colors.green : Colors.red),
        ),
        Text(counter.toString()),
        FloatingActionButton(
          onPressed: setToGreenAndIncrement,
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
