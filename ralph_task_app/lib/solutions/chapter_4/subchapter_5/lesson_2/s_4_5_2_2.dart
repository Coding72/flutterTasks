import 'package:flutter/material.dart';

class S4522 extends StatelessWidget {
  const S4522({super.key});
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return MyStatelessWidget();
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Text("Hallo Ralph"),
          ElevatedButton(onPressed: (){}, child: const Text('Klick mich'))        
        ],
      );
    /*
      Scaffold(
        body: Column(
          children: <Widget>[
            Text("Hallo Ralph"),
            ElevatedButton(onPressed: (){}, child: const Text('Klick mich'))        
          ],
        )
      );
    */      
  }
}
