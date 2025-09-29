/**
 * @todo
 * fehler abfangen falls file nicht gefunden wird
 * erst aus assets dann test suche recursive aus fileordner, falls berechtigung
 * aufbau /lib/mywidgets.dart alle genutzten classen und widget erben und neu
 * /lib/pages/screennames
 * ClipRRect um Bild abzuscheiden, SizedBox 200px zum test mit paddin , 80%/20%
 * ki fragen wenn sich handy dreht dann mehr bilder
 * ki fragen aufteilung appbar, body und navigationbar
 */ 
import 'package:flutter/material.dart';
import 'dart:ui';

import 'gallerydaten.dart';

void main() {  
  runApp(Start());
}

class Start extends StatelessWidget {
  // final GlobalKey _key_Gallery = GlobalKey();
  const Start({super.key});
//keys hier setzen
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cover Status Bar Example'),          
          backgroundColor: Colors.transparent, // Transparent für Überdeckung
          elevation: 0, // Keine Schatten
        ),
        extendBodyBehindAppBar: true, 
        body: Page01(),
        
      ),
    );
  }
}

class Page01 extends StatelessWidget {

  final GlobalKey _key1 = GlobalKey();
  //final GlobalKey _key2 = GlobalKey();

  Page01({super.key});

  @override
  Widget build(BuildContext context){
    final double screenWidth = MediaQuery.of(context).size.width;
    /*final double screenHeight = MediaQuery.of(context).size.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;

    //statusBarHeight=0;
    final double gameNameHeight = bodyHeight/100*16; //16%
    final double introTextHeight = bodyHeight/100*22; //createScrollBox SingleChildScrollView hier padding horizontal 4% der breite
    final double btnAreaHeight = bodyHeight/100*20;    

    final double headerHeight = (screenHeight * 7.7/100); // 7.7% der DisplayHöhe
    final double bodyHeight = screenHeight - headerHeight-statusBarHeight;
    */

    return
    Stack(
      children: [
        Gallery()
      ]
      
    );
  }
}

class Gallery extends StatelessWidget {
  Gallery({super.key});

  @override
  Widget build(BuildContext context){
    //final double screenWidth = MediaQuery.of(context).size.width;
    /*final double screenHeight = MediaQuery.of(context).size.height;
    double statusBarHeight = MediaQuery.of(context).padding.top;

    //statusBarHeight=0;
    final double gameNameHeight = bodyHeight/100*16; //16%
    final double introTextHeight = bodyHeight/100*22; //createScrollBox SingleChildScrollView hier padding horizontal 4% der breite
    final double btnAreaHeight = bodyHeight/100*20;    

    final double headerHeight = (screenHeight * 7.7/100); // 7.7% der DisplayHöhe
    final double bodyHeight = screenHeight - headerHeight-statusBarHeight;
    */

    return
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            GlassmorphicBox()

            
          ],
        )
      ]
    );    
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Card (
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: const Text('BUY TICKETS'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
              TextButton(
                child: const Text('LISTEN'),
                onPressed: () {
                  /* ... */
                },
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}

class GlassmorphicBox1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2), // Verwendung von withValues
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 3), // Verschiebung des Schattens
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Bild-Widget
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 160, // 80% der Höhe der Box (200 * 0.8)
              child:                 
              Image(
                image: AssetImage('assets/images/ski.jpeg'), 
                fit: BoxFit.cover
              ),
            ),
            // Klarer Hintergrund für den Glaseffekt
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1), // Weitere Transparenz für den Glaseffekt
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  'Glas Box',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GlassmorphicBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2), // Verwendung von withValues
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 3), // Verschiebung des Schattens
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            // Bild-Widget
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 160, // 80% der Höhe der Box (200 * 0.8)
              child: 
              Image(
                image: AssetImage('assets/images/ski.jpeg'), 
                fit: BoxFit.cover
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1), // Weitere Transparenz für den Glaseffekt
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text unter dem Bild
                  Text(
                    'Glas Box',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 24,
                      shadows: [
                        Shadow(
                          color: Colors.black.withValues(alpha: 0.5), // Schattenfarbe
                          offset: Offset(2, 2), // Verschiebung des Schattens
                          blurRadius: 4, // Unschärfe des Schattens
                        ),
                      ],
                    ),
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
/*
Page 1:

Widget Header enthält seitenname 

Widget Gallery scrollable
enthält scrollbox -> gridview -> mit cards

Widget Footer fixed


Page 2:
column -> 
  Image voll größe an bild anpassen
  3 Textboxen
  Scrollbox



        Positioned(
          key: _key1,
          height: 300,//headerHeight,
          left: 0,
          top: 0, //statusBarHeight,
          child: Container(
           //width: screenWidth,
            height: 100,
            color: Color(0xff5ED0A3),
            child: Container(
              width: 100,
              height: 100            
            )
          )
        )
*/