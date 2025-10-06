//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'dart:ui';
  import 'package:flutter/material.dart';

  import '../tests/button01.dart';

//#endregion ===== imports =====

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String imgaeFile = "assets/graphics/backgrounds/bg_startscreen.png";

    return MaterialApp(
      title: 'glassbox01',
      home:Page()
    );
  }
}


class Page extends StatelessWidget {
  const Page({super.key});

 @override
  Widget build(BuildContext context) {
    String imageFile1 = "assets/graphics/backgrounds/bg_startscreen.png";
    String imageFile2 = "assets/graphics/products/chick cupcakes_3D.png";
    String imageFile3 = "assets/graphics/details/T2.png";

    //#region [rgba(165,245,205,0.1)] ===== Widgets =====
      
    //#endregion ===== Widgets =====    
    
    return Scaffold(
      body:Stack(
        children: [
          Positioned(
            left:0,
            top:0,          
            child: Image.asset(
              imageFile1,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fitHeight,  // Breite passt sich automatisch an
            )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*-8/100, 
            top: MediaQuery.of(context).size.height*12/100,      
            child: Image.asset(
              imageFile2,
              height: MediaQuery.of(context).size.height * 0.65,
              fit: BoxFit.fitHeight,  // Breite passt sich automatisch an
            )
          ),

          Positioned(
            left: MediaQuery.of(context).size.width*-1.6/100,
            top: MediaQuery.of(context).size.height*52/100,
            child: Image.asset(
              imageFile3,
              width: MediaQuery.of(context).size.width+MediaQuery.of(context).size.width*1.6/100,
              fit: BoxFit.fitWidth,  // Breite passt sich automatisch an
            )
          ),

          Positioned(
            left: (MediaQuery.of(context).size.width-340)/2,
            top: MediaQuery.of(context).size.height*65.5/100,
            child: GlassBox01()

          )
        ]
      )
    );
  }
}

class GlassBox01 extends StatelessWidget {
  GlassBox01({super.key});

  @override
  Widget build(BuildContext context) {
  //#region [rgba(165,245,205,0.1)] ===== Styles =====
    BoxDecoration boxStyle = BoxDecoration(
      borderRadius: BorderRadius.circular(30)
      
    );

    TextStyle textStyle1 = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
      color:Colors.white  
    );

    TextStyle textStyle2 = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 13.4,
      fontWeight: FontWeight.normal,
      color:Color(0x77ffffff),
      height: 1.4
    );

    TextStyle textStyle3 = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color:Color(0xffffffff) 
    );

/*
background: radial-gradient(82.83% 280.98% at 96.89% 70.83%, #F69EA3 0%, #E970C4 100%) /* warning: gradient uses a rotation that is not supported by CSS and may not behave as expected */;
background-blend-mode: overlay;
background: linear-gradient(180deg, rgba(254, 200, 241, 0.9) -22.92%, rgba(237, 146, 215, 0) 26.73%);

box-shadow: 0px 10px 30px 0px #EA71C580;

box-shadow: 0px 0px 5px 0px #FFACE4 inset;

box-shadow: 0px -1px 8px 0px #9375B6 inset;


*/


    BoxDecoration decoration = BoxDecoration(
      color: Colors.blue,
      gradient: RadialGradient(
        center: Alignment(0.9689, 0.7083),
        radius: 5.0,
        colors: [Color(0xFFF69EA3), Color(0xFFE970C4)],
        stops: [0.0, 1.0],
      ),
      boxShadow: [
        BoxShadow(
          color: Color(0xaaea71c5),
          blurRadius: 20,
          offset: Offset(0, 10),
        ),
        BoxShadow(
          color: Color(0xfffface4),
          spreadRadius: -5.0,
          blurRadius: 5,
          offset: Offset(0, 0),
        ),
        BoxShadow(
          color: Color(0xff9375b6),
          spreadRadius: -8.0,
          blurRadius: 8,
          offset: Offset(0, -1),
        )                                
      ],
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Color(0xFFE970C4), width: 1), 
    );


  //#endregion ===== Styles =====

    return 
    Center(      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            width: 340,
            height: 208,            
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((255*0.2/100).toInt()),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0xffffffff),
                width: .1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:EdgeInsets.only(left:30, right:30, top:30),
                  child:Text(
                    "Feeling Snackish Today ?",
                    style: textStyle1        
                  )
                ),
                Padding(
                  padding:EdgeInsets.only(left:30, right:30, top:8),
                  child:Text(
                    "Explore Angi’s most popular snack selection and get instantly happy.",
                    style: textStyle2,
                    textAlign: TextAlign.center,   
                  )
                ),

                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 14),
                  child: Center(
                    child: Container(
                      width: 202,
                      height: 48,
                      decoration: decoration,
                      child: Center(child:Text(
                        "Order Now",
                        style: textStyle3,
                        textAlign: TextAlign.center,
                      )    )
                    ),
            
                  ),
                ),
              ],
            ),
          )
        )
      )
    );
  }
}
/*The specific RenderFlex in question is: RenderFlex#75a84 OVERFLOWING:
  creator: Column ← Padding ← DecoratedBox ← ConstrainedBox ← Container ← BackdropFilter ← ClipRRect ←
    Center ← GlassBox01 ← Positioned ← Stack ← KeyedSubtree-[GlobalKey#34cbc] ← ⋯
    */

