//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'package:flutter/material.dart';

  import 'pages/start.dart';
  import 'pages/products.dart';
  import 'pages/productinfo.dart';
//#endregion ===== imports =====

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget { 
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Start',
      home:StartPage()
    );
  }
}
