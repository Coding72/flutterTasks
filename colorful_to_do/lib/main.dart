import 'package:colorful_to_do/callback_functions.dart';
import 'package:colorful_to_do/list_element_widget.dart';
import 'package:colorful_to_do/statefulwidget_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> tasks = [
      {"name": "Kaffee machen", "icon": Icons.coffee},
      {"name": "Frühstücken", "icon": Icons.fork_left},
      {"name": "Check-In mit Edu", "icon": Icons.visibility},
      {"name": "Unterricht halten", "icon": Icons.book},
      {"name": "Gym gehen", "icon": Icons.fitbit},
      {"name": "Abendessen machen", "icon": Icons.menu_book},
    ];

    void greetUser() {
      print("Hello User");
    }

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            greetUser();
          },
        ),
        appBar: AppBar(
          backgroundColor: Color(0xfffadeb1),
          title: Text("Colorful To-Do App"),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          ],
        ),
        body: SafeArea(
          minimum: EdgeInsets.all(8),

          // child: GridView.builder(
          //   itemCount: tasks.length,
          //   gridDelegate: delegateFuction(),
          //   itemBuilder: (context, index) {
          //     return Card(child: Text(tasks[index]["name"]));
          //   },
          // ),
          child: Center(
            child: Column(
              children: [DemoStatefulWidget(), CallbackFunctions()],
            ),
          ),
        ),
      ),
    );
  }

  SliverGridDelegateWithFixedCrossAxisCount delegateFuction() {
    return SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);
  }
}
