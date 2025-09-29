//#region [rgba(165,245,205,0.1)] ===== imports =====
import 'package:flutter/material.dart';

import '../gallerydaten.dart'; // kann raus evtl.
//#endregion ===== imports =====
/*
2 columns 
der obere ein bild voll

*/
class BigPicPage extends StatelessWidget{
  final int? itemID;

  const BigPicPage({super.key, this.itemID=0});

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
        child:BigPicPageContent(itemID:itemID),
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

class BigPicPageContent extends StatelessWidget{
  final int? itemID;

  const BigPicPageContent({super.key, this.itemID=0});

  @override
  Widget build(BuildContext context) {
    //#region [rgba(165,245,205,0.1)] ===== Declaration =====    
    final double screenWidth = MediaQuery.of(context).size.width; // bei landscape nach höhe orientieren
    final double screenHeight =  MediaQuery.of(context).size.height;

    final double picHeight = screenHeight*70/100; // 80% 
    //#endregion ===== Declaration =====

    //#region [rgba(165,245,205,0.1)] ===== Styles =====
    const TextStyle titleStyle = TextStyle(
      fontSize: 24.0, // Setze die gewünschte Textgröße hier
      fontWeight: FontWeight.normal, // Optional: Setze den Schriftstil
      color: Colors.black, // Optional: Setze die Textfarbe
    );

    const TextStyle dateStyle = TextStyle(
      fontSize: 12.0, // Setze die gewünschte Textgröße hier
      fontWeight: FontWeight.bold, // Optional: Setze den Schriftstil
      color: Colors.black, // Optional: Setze die Textfarbe
    );

    const TextStyle textStyle = TextStyle(
      fontSize: 12.0, // Setze die gewünschte Textgröße hier
      fontWeight: FontWeight.normal, // Optional: Setze den Schriftstil
      color: Colors.black, // Optional: Setze die Textfarbe
    ); 
    //#endregion ===== Styles =====

    return
    Container(
      color:Color(0xfffdf7ff),
      child:Stack(      
        children:[   
          Positioned(
            top:0,
            width:screenWidth,
            height:picHeight,
            child: Image.asset("assets/images/ski.jpg", fit: BoxFit.cover, width: double.infinity),       
          ),
          Positioned(
            top:picHeight,
            right:20,
            width:20,            
            child:  IconButton(
              icon: Icon(Icons.home),
              onPressed: () {}   
            )
          ),
          Positioned(               
            top:picHeight,
            width:screenWidth,
              child: Column(       
                children: [
                  SizedBox(
                    width:double.infinity, 
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0), 
                      child:Text("Adrenalin pur!", textAlign: TextAlign.left, style:titleStyle)
                    ),
                  ),
                  SizedBox(
                    width:double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 4.0, right: 20.0), 
                      child: Text("14.07.2020", textAlign: TextAlign.left, style:dateStyle)
                    ),
                  ),
                  SingleChildScrollView(
                    child: SizedBox(                      
                      width: double.infinity,
                      child:Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 12.0, right: 20.0), 
                        child: Text(
                          "Ein Skifahrer in voller Montur fliegt mutig über einen schneebedeckten Hügel, während der klare, blaue Himmel im Hintergrund strahlt. Die Sonne scheint hell, beleuchtet die funkelnden Schneeflocken und wirft lange Schatten auf die Piste. An einem perfekten Wintertag vor einigen Jahren, als der Schnee frisch und die Bedingungen ideal waren, führte dieser Sprung zu einem unvergesslichen Moment voller Adrenalin und Freude.",
                          textAlign: TextAlign.left, 
                          style:textStyle
                        )
                      )
                    )
                  )
                ]
              )         
            )
          ]  
        )   
    );
  }
}



// gallery back:fdf7ff

// appbar back: 5c0e1e

// navbar back> f2edf6

  //GalleryItem({this.imageTitle="", this.imageDate="", this.imageDescription="", required this.imagePath});
/*

*/ 

class BackButton extends StatelessWidget{  
  //final VoidCallback? onPressed;
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
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
        height:20,     
        child: ElevatedButton(          
          style: btnstyle, 
          onPressed: () {},
                     child:Container( color:Colors.blue,
              child:Text("Zurück")
            
             
             
          ),
      )        
        );
    
  }
}