import 'package:dirty_code/src/features/overview/presentation/overview_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 190, 248, 248)),
      ),
      home: const OverviewScreen(),
    );
  }
}
