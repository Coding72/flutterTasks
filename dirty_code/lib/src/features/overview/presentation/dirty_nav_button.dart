import 'package:flutter/material.dart';

class DirtyNavButton extends StatelessWidget {
  final Widget destination;
  final int number;
  const DirtyNavButton(
      {super.key, required this.destination, required this.number});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return destination;
          },
        ));
      },
      child: Text("Dirty Screen #$number"),
    );
  }
}
