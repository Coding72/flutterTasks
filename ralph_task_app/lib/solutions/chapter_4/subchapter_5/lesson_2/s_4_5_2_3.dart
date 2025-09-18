import 'package:flutter/material.dart';

class S4523 extends StatelessWidget {
  const S4523({super.key});

  @override
  Widget build(BuildContext context) {
    try { return MyNameWidget(); } catch (e){ return ErrorWidget(e); }
  }
}

class MyNameWidget extends StatefulWidget {
  const MyNameWidget({super.key});

  @override
  State<MyNameWidget> createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<MyNameWidget> {
  String _text = "";

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text(_text),
        ElevatedButton(onPressed: (){ 
          _text = "Ralph";
          setState(() {           
        });} , child: Text("Name anzeigen"))
      ]
    );
  }
}
