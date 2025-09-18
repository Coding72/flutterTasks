import 'package:flutter/material.dart';

class S4532 extends StatelessWidget {
  const S4532({super.key});
  
  @override
  Widget build(BuildContext context) {
    try {
      return Widget_4_5_3_2();
    } catch(e){ return ErrorWidget(e); }
    
  }
}

class Widget_4_5_3_2 extends StatelessWidget {

  const Widget_4_5_3_2({super.key});

  @override
  Widget build(BuildContext buildContext){
    return 
    Column(
      children: [
        Text("App Akademie"),
        Text("App Akademie", style: TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold)),
        Text("App Akademie", style: TextStyle(fontSize: 10, color: Colors.green, fontStyle: FontStyle.italic))
      ],
    );    
  }
}
