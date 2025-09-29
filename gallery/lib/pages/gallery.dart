//#region [rgba(165,245,205,0.1)] ===== imports =====
import 'package:flutter/material.dart';

import '../gallerydaten.dart';
//#endregion ===== imports =====

class GalleryPage extends StatelessWidget{
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.bold, 
      color: Colors.white,
    ); 
     
    return
    Scaffold(
      body:SafeArea(
        child: Gallery(),
      ),      
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), 
        child: AppBar(
          backgroundColor: Color(0xff5c0e1e),
          title: Text('My Gallery', textAlign: TextAlign.center, style:textStyle),
          centerTitle: true,
        ) 
      )          
    );
  }
}

class Gallery extends StatelessWidget{
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    //#region [rgba(165,245,205,0.1)] ===== Declaration =====    
    final double screenWidth = MediaQuery.of(context).size.width; // bei landscape nach höhe orientieren
    //final double screenHeight =  MediaQuery.of(context).size.height;
    final double space = screenWidth*3/100; // 3% space
    final int colLoopCond = galleryData.length ~/ 2;
    final int rowLoopCond = (galleryData.length % 2 == 0) ? 0 : 1;
    int c = 0;
    //#endregion ===== Declaration =====

    return
    Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
             SizedBox(width: 1, height: space),
             for (int i=0; i<colLoopCond; i++)
             ...[
              Row(
                children: [
                  for (int j=1; j<=2; {j++, c++})
                  ...[
                    SizedBox(width: space, height: 1),
                    Button(imagePath: galleryData[c].imagePath, imageTitle: "${galleryData[c].imageTitle} $c", onPressed:(){ Navigator.pushNamed(context, '/bigpic', arguments: c);}),
                  ]
                ],
              ),
              SizedBox(width: 1, height: space),
              ],
             Row(
                children: [
                  for (int j=1; j<=rowLoopCond; {j++, c++})
                  ...[
                    SizedBox(width: space, height: 1),
                    Button(imagePath: galleryData[c].imagePath, imageTitle: "${galleryData[c].imageTitle} $c", onPressed:(){ Navigator.pushNamed(context, '/bigpic', arguments: c); }),
                  ]
                ]
              )
            ]       
          )
        )
      ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'About'),
          ],
          onDestinationSelected: (index) {
        }
      )
    );
  }
}

class Button extends StatelessWidget{  
  final VoidCallback? onPressed;
  final String imagePath;
  final String imageTitle;
  const Button({super.key, this.imagePath="assets/images/kaya.jpg", this.imageTitle="", this.onPressed});

  @override
  Widget build(BuildContext context) {
    //#region [rgba(165,245,205,0.1)] ===== Declaration =====    
    final double screenWidth = MediaQuery.of(context).size.width; // bei landscape nach höhe orientieren
    //final double screenHeight = screenWidth;
    final double space = screenWidth*3/100; // 3% space

    final double boxWidth = (screenWidth-space*3)/2;
    final double boxHeight = boxWidth;
    final double picHeight = boxWidth*80/100; // 80%
    final double labelHeight = boxWidth*20/100;
    //#endregion ===== Declaration =====

    //#region [rgba(165,245,205,0.1)] ===== Styles =====
    final ButtonStyle btnstyle = ElevatedButton.styleFrom(
      backgroundColor: Color(0xfff2edf6),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final TextStyle titleStyle = TextStyle(
      fontSize: 12.0, // Setze die gewünschte Textgröße hier
      fontWeight: FontWeight.normal, // Optional: Setze den Schriftstil
      color: Colors.black, // Optional: Setze die Textfarbe
    );

    //#endregion ===== Styles =====

    return
    SizedBox(
      width: boxWidth,
      height: boxHeight,          
      child: ElevatedButton(
        style: btnstyle, 
        onPressed: () {}, 
        child:
        Stack(
          children:[
            Positioned(
              top:0,
              width:boxWidth,
              height:picHeight,
              child: ClipRRect(       
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
                child: 
                // breite feststellen dann fitWidth sonst fitHeight
                Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity), 
              ),
            ),
            Positioned(
              top:picHeight,
              width:boxWidth,
              height:labelHeight,
              child:Center(
                child: Text(
                  imageTitle,
                  style: titleStyle,
                  overflow: TextOverflow.ellipsis
                )
              )
            )   
          ]          
        )
      )
    );
  }
}

