import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Column(          
          children: [
            Expanded(
              flex: 20,
              child: Center(
                child: Text(
                  "ProjeKt Mogli",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 24,
                    letterSpacing: 0.04 * 24,
                    color:Color.fromARGB(255, 54, 59, 42),
                    shadows: [
                      Shadow(
                        color: Color.fromARGB(71, 206, 200, 21), 
                        offset: Offset(2.0, 2.0), 
                        blurRadius: 6.0,
                      ) 
                    ]              
                  )
                )
              )
            ),
            Expanded(
              flex: 60,              
              child: Image.network(
                'https://framerusercontent.com/images/aumxTA7TXEz8OJsniGZWlkyrgY.png',
                 fit: BoxFit.fitWidth
              )
            ),
            Expanded(
              flex: 20,
              child: Center(
                child: Padding(                  
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    textAlign: TextAlign.left,
                    "ProjeKt Mogli ist eine Plattform, die Hunde aus Tierheimen oder privater Haltung mit neuen Besitzer:innen verbindet. Durch einfaches Matching finden Mensch und Tier schnell zueinander – ein Projekt mit Herz und sozialem Mehrwert.",
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.10 * 14,                      
                    )
                  ),
                )
              )
            )
          ]
        )
      )
    );
  }
}
