// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class DirtyScreenTwentyFour extends StatelessWidget {
  const DirtyScreenTwentyFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #24"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text(
              'Buy groceries',
              style: TextStyle(
                fontSize: 18,
                decoration: false ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              value: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text(
              'Walk the dog',
              style: TextStyle(
                fontSize: 18,
                decoration: true ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              value: true,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text(
              'Complete homework',
              style: TextStyle(
                fontSize: 18,
                decoration: false ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              value: false,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text(
              'Call mom',
              style: TextStyle(
                fontSize: 18,
                decoration: true ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              value: true,
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
