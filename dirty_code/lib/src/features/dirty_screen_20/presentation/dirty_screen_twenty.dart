import 'package:flutter/material.dart';

class DirtyScreenTwenty extends StatelessWidget {
  const DirtyScreenTwenty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dirty Screen #20"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Badge(
              label: Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/11.jpg'),
              ),
            ),
            title: Text('Michael Scott'),
            subtitle: Text('Regional Manager'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Badge(
              label: Text(
                '4',
                style: TextStyle(color: Colors.white),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/women/22.jpg'),
              ),
            ),
            title: Text('Pam Beesly'),
            subtitle: Text('Receptionist'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Badge(
              label: Text(
                '99+',
                style: TextStyle(color: Colors.white),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/men/33.jpg'),
              ),
            ),
            title: Text('Jim Halpert'),
            subtitle: Text('Sales Representative'),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            leading: Badge(
              label: Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/women/44.jpg'),
              ),
            ),
            title: Text('Dwight Schrute'),
            subtitle: Text('Assistant Regional Manager'),
            trailing: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
