import 'package:flutter/material.dart';

class S4531 extends StatelessWidget {
  const S4531({super.key});
  
  @override
  Widget build(BuildContext context) {  
  try {
    return const Widget_4_5_3_1();
  } catch (e) { return ErrorWidget(e); }
  }
}

class Widget_4_5_3_1 extends StatelessWidget {
  const Widget_4_5_3_1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container( width: 100, height: 100,  color: Colors.blueGrey ),
        Container( width: 100, height: 100,  color: Colors.blue ),
        Container( width: 100, height: 100,  color: Colors.cyan ),
      ],
    );
  }
}
