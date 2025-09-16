import 'package:flutter/material.dart';
/**
 * @todo
 * settimeout()... 4 iteratoren, random, und textchange test
 * Gradient von figma verlauf anpassen
 * extra klassen, nicht in den return, vorher temp werte setzen
 * in library auslagern
 * async/await und future test mit load/save
 * /test wie beim dart ordner und analyze
 * doc /// [] ... wie beim flutter original code
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
          title: Text('test'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color(0xFFD8EBF0), // stop 0%
                Color(0xFFFDFEFF), // stop 35%
                Color(0xFFD8EBF0), // stop 100%
              ],
              stops: [0.0, 0.35, 1.0],
              center: Alignment.center,
              radius: 1.0, 
            )
          ),
          child:Column(
            children: [Text('test')],
          ),
          //color:Color.fromARGB(255, 50, 50, 200),
        ),
      ),      
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      )
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      )
    );
  }
}
*/