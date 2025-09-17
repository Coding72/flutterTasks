import 'package:flutter/material.dart';

class S4535 extends StatelessWidget {
  const S4535({super.key});
  @override
  Widget build(BuildContext context) {
    try { return Widget_4_5_3_5_a(); } catch (e) { return ErrorWidget(e); }
  }
}

class Widget_4_5_3_5_a extends StatelessWidget {
  const Widget_4_5_3_5_a({super.key});

  @override
  Widget build(BuildContext context){
    return
    Column(
      children: [
        Row(
          children: [
            Container(width:100, height:100, color:Colors.red),
            Container(width:100, height:100, color:Colors.green)
          ]          
        ),
        Row(
          children: [
            Container(width:100, height:100, color:Colors.blue),
            Container(width:100, height:100, color:Colors.yellow),
          ]
        )
      ]
    );
  }
}

class Widget_4_5_3_5_b extends StatelessWidget {
  const Widget_4_5_3_5_b({super.key});

  @override
  Widget build(BuildContext context){
    return
    Row(
      children: [
        Column(
          children: [
            Container(width:100, height:100, color:Colors.red),
            Container(width:100, height:100, color:Colors.blue)
          ]          
        ),
        Column(
          children: [
            Container(width:100, height:100, color:Colors.green),
            Container(width:100, height:100, color:Colors.yellow),
          ]
        )
      ]
    );
  }
}

