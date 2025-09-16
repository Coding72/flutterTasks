import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/solutions/solutions.dart';

void main() {
  testWidgets(
      'Should find Text starting with "Hello " and ElevatedButton with "Klick mich"',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: S4522(),
      ),
    );

    final helloTextFinder = find.byWidgetPredicate(
      (Widget widget) =>
          widget is Text && (widget.data?.startsWith('Hello ') ?? false),
      description: 'Text starting with "Hello "',
    );

    final buttonFinder = find.widgetWithText(ElevatedButton, 'Klick mich');

    expect(helloTextFinder, findsOneWidget);
    expect(buttonFinder, findsOneWidget);
  });
}

/*
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

typedef S4522 = MyStatelessWidget;
*/