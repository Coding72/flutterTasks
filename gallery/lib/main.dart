//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'package:flutter/material.dart';

  import 'gallerydaten.dart';
  import 'pages/gallery.dart';
  import 'pages/pic.dart';
  import 'pages/about.dart';
//#endregion ===== imports =====

void main() {
  runApp(
    MaterialApp(
      //home:BigPicPage(itemID:1),
      home:GalleryPage(),
      //initialRoute: '/gallery',
      routes: {
        '/gallery': (context) => GalleryPage(),
        //'/bigpic': (context) => BigPicPage(itemID),
        //'/about': (context) => AboutPage(),
      },
      debugShowCheckedModeBanner: false,
    )
  );
}

class Start extends StatelessWidget{

  const Start({super.key});
      
  @override
  Widget build(BuildContext context) { 
    return
    Scaffold();
  }
}
