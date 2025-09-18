import 'package:flutter/material.dart';

class S4524 extends StatelessWidget {
  const S4524({super.key});
  @override
  Widget build(BuildContext context) {
    try { return ShowHideNameWidget(); } catch (e){ return ErrorWidget(e); }
  }
}

class ShowHideNameWidget extends StatefulWidget {
  const ShowHideNameWidget({super.key});

  @override
  State<ShowHideNameWidget> createState() => _ShowHideNameWidgetState();
}

class _ShowHideNameWidgetState extends State<ShowHideNameWidget> {
  String _name = "", _buttonText = "Name anzeigen";

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text(_name),
        ElevatedButton(onPressed: (){ 
          if (_name=="") {
            _name = "Ralph"; _buttonText = "Name verstecken";
          } else {
            _name = ""; _buttonText = "Name anzeigen";
          }         
          setState(() {});} , child: Text(_buttonText))
      ]
    );
  }
}


