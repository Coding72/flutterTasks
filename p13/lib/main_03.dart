import 'dart:async';

import 'package:flutter/material.dart';
/**
 * @todo
 * load Base64 encoded font Almendra SC und open sans
 * load Base64 encoded icons
 * button test white fontcolor, back 9A9E7F
 * menu icon white fontcolor, back 9A9E7F
 * header back 5ED0A3 
 */

/*
Bearbeite den Rückgabewert der build-Methode und verändere so das UI, das von Flutter gezeichnet wird. 
In anderen Worten: 
  gestalte innerhalb der MaterialApp Instanz einen Widget Tree, der mindestens folgende Elemente enthält: 
    ein Scaffold mit AppBar, eine Column, mindestens einen Text und einen Container.    
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo1',
      home : const MyApp2(), //home test
       theme: ThemeData( colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), ),      
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo2',
      home:Scaffold(
        appBar: AppBar(
          title: Text('Header', style: TextStyle(color:Color.fromARGB(99, 0, 6, 6)),),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0xFFD8EBF0), // stop 0%
                  Color(0xFFFDFEFF), // stop 35%
                  Color(0xFFD8EBF0), // stop 100%
                ],
                stops: [0.0, 0.35, 1.0],
                center: Alignment.center,
                radius: 3.5, 
              )            
            ),
            child:GridView.count(
              crossAxisCount: 2, // 2 Spalten
              children: <Widget>[
                _buildGridItem('Teil 1'),
                _buildGridItem('Teil 2'),
                _buildGridItem('Teil 3'),
                _buildGridItem('Teil 4'),
              ],
            )         
          )
        )
      )
    );
  }

  Widget _buildGridItem(String text) {
    return Container(
      alignment: Alignment.center, // Text zentrieren
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2), // Rahmen um die Teile
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black, // Textfarbe
          fontSize: 24, // Schriftgröße
        ),
      )
    );
  }
  
}
