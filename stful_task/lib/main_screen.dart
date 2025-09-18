import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final GlobalKey<ShowSumState> showSumKey = GlobalKey<ShowSumState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 16,
          children: [
            CounterCard(showSumKey: showSumKey),
            CounterCard(showSumKey: showSumKey),
            CounterCard(showSumKey: showSumKey),
            CounterCard(showSumKey: showSumKey),
            CounterCard(showSumKey: showSumKey),
            ShowSum(key: showSumKey)
          ],
        ),
      ),
    );
  }
}


