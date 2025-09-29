          title: Text('Meine App'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {    
              Scaffold.of(context).openDrawer();
            },
          ),