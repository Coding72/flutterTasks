import 'package:flutter/material.dart';

class DirtyScreenThirteen extends StatelessWidget {
  const DirtyScreenThirteen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #13"),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/1.jpg'),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/2.jpg'),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Jane Smith',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/3.jpg'),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Alex Johnson',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/women/4.jpg'),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Emma Brown',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
