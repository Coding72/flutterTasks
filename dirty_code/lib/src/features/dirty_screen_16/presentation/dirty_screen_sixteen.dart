import 'package:flutter/material.dart';

class DirtyScreenSixteen extends StatelessWidget {
  const DirtyScreenSixteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #16"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/100'),
              ),
              title: const Text('Alice Johnson'),
              subtitle: const Text('Project Manager'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/101'),
              ),
              title: const Text('Bob Smith'),
              subtitle: const Text('Developer'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/102'),
              ),
              title: const Text('Catherine Lee'),
              subtitle: const Text('Designer'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/103'),
              ),
              title: const Text('David Wilson'),
              subtitle: const Text('Product Owner'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
