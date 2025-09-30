/*
  globalkey für alle StatefulWidgets, wenn möglich stacks und positioned

*/
//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'package:flutter/material.dart';

//#endregion ===== imports =====

enum EIngedients {
  calories,
  glutenFree,
  noFat,
  sugarFree,
}

class Ingredients { 
  static String calories = 'assets/graphics/icons/ingredients/calories.png';
  static String glutenFree = 'assets/graphics/icons/ingredients/gluten-free.png';
  static String noFat = 'assets/graphics/icons/ingredients/no-fat.png';
  static String sugarFree = 'assets/graphics/icons/ingredients/sugar-free.png';
}



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final String path = "${Ingredients.calories}";
    print(path);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(body:Image.asset(path)),

    );
  }
}
