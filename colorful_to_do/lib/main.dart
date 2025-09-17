import 'package:colorful_to_do/list_element_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfffadeb1),
          title: Text("Colorful To-Do App"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          ],
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(8),
          child: Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListElementWidget("Zigaretten rauchen", iconName: Icons.person),
              ListElementWidget("Mittagessen"),
            ],
          ),
        ),
      ),
    );
  }
}
