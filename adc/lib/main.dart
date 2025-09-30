/*
  globalkey für alle StatefulWidgets, wenn möglich stacks und positioned

  glassbutton:
  



*/
//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'package:flutter/material.dart';

  import 'pages/start.dart';
  import 'pages/products.dart';
  import 'pages/productinfo.dart';
//#endregion ===== imports =====

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
