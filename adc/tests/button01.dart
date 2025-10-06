//#region [rgba(165,245,205,0.1)] ===== imports =====
  import 'package:flutter/material.dart';

//#endregion ===== imports =====

enum EIngedients {
  calories,
  glutenFree,
  noFat,
  sugarFree,
}

class Ingredients { 
  static String calories = 'assets/graphics/icons/ingredients/calories.png';
  static String glutenFree = 'assets/graphics/icons/ingredients/gluten-free.png';
  static String noFat = 'assets/graphics/icons/ingredients/no-fat.png';
  static String sugarFree = 'assets/graphics/icons/ingredients/sugar-free.png';
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final String path = "${Ingredients.calories}";
    print(path);
    return MaterialApp(
      title: 'button01',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: Scaffold(body:Image.asset(path)),
      /*home:Scaffold(
        appBar: AppBar(
          title: Text('button01'),          
          backgroundColor: Colors.blue, // Transparent für Überdeckung
          elevation: 0, // Keine Schatten
        ),
        body:Button01()
      )*/
      home:Scaffold(body:Box01())
    );
  }
}

class Test01 extends StatelessWidget {
  const Test01({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Builder Beispiel')),
        body: Center(
          child: Builder(
            builder: (BuildContext context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Button gedrückt!')),
                  );
                },
                child: Text('Drücke mich'),
              );
            },
          ),
        ),
      ),
    );
  }
}

/*
class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    SizedBox.expand(
      child:Image.asset("assets/graphics/backgrounds/bg_startscreen.png")
    )
    ;
  }
}
*/

class TextDemoLikes01 extends StatelessWidget {
  const TextDemoLikes01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //#region [rgba(165,245,205,0.1)] ===== Styles =====
    const TextStyle textStyle = TextStyle(
      fontFamily: 'Roboto',
      fontSize: 24.0,
      //letterSpacing: 0.04 * 24,
      //wordSpacing: ,
      fontWeight: FontWeight.normal,
      color:Color(0xFF524A1B),
      shadows: [
        Shadow(
          color: Color(0x3FFFF600), // Farbe des Schattens
          offset: Offset(2.0, 2.0), // Verschiebung des Schattens
          blurRadius: 6.0, // Unschärfe des Schattens
        )
      ] 
    );
    //#endregion ===== Styles =====

    return Stack(
      children: [
        Positioned(
          top: 100,
          left: 0,
          child: Text(
            "test \u2764 \u2661 ${String.fromCharCode(200)}",
            style: textStyle,
            textDirection: TextDirection.ltr,
          ),
        ),
        Positioned(
          top: 150,
          left: 0,
          child: Icon(
            Icons.favorite, // gehr nur wenn matieraldesign in pubspec auf true steht
            color: Colors.pink,
            size: 24.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
      ],
    );
  }
}

class Button01 extends StatelessWidget {
  const Button01({super.key});

  @override
  Widget build(BuildContext context) {
    //#region [rgba(165,245,205,0.1)] ===== Styles =====
      
    //#endregion ===== Styles =====

    return      
    Container(
      width: 279,
      height: 120,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFDFEFF), Color(0xFFD8EBF0)],
          stops: [0.0, 1.0],
          begin: Alignment.topLeft, // Startpunkt des Gradienten
          end: Alignment.bottomRight, // Endpunkt des Gradienten
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox.expand(child: Center(child: Text("Order Now"))),
    );
  }
}

class Box01 extends StatelessWidget {
  // final VoidCallback onPressed;
  final String text;

  const Box01({super.key, 
    // required this.onPressed,
    this.text = 'Order Now',});

  @override
  Widget build(BuildContext context) {
//#region [rgba(165,245,205,0.1)] ===== Declaration =====
  
//#endregion ===== Declaration =====

//#region [rgba(165,245,205,0.1)] ===== Styles =====
    BoxDecoration decoration = BoxDecoration(
      color: Colors.blue,
      gradient: RadialGradient(
        center: Alignment(0.9689, 0.7083),
        radius: 5.0,
        colors: [Color(0xFFF69EA3), Color(0xFFE970C4)],
        stops: [0.0, 1.0],
      ),
      border: Border.all(),
      boxShadow: [
        BoxShadow(
          color: Color(0xea71c580),
          blurRadius: 30,
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
      //border: Border.all(color: Colors.black, width: 1), 
    );

    final TextStyle titleStyle = TextStyle(
      fontFamily: 'Roboto', 
      fontWeight: FontWeight.bold, 
      fontSize: 16, 
      letterSpacing: 0.04 * 24, 
      color:Colors.white
    );
//#endregion ===== Styles =====

//#region [rgba(165,245,205,0.1)] ===== Widgets =====
  Widget btn1 =
    Positioned(
      top: 100,
      left: 0,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 26.0,
            right: 26.0,
            top: 14.0,
            bottom: 14.0,
          ),
          child: Container(
            width: 202,
            height: 48,
            decoration: decoration,
            child: SizedBox(
              child: Center(
                child: Text(
                  'Ordner Now',
                  style: titleStyle ,
                )
              )
            ),
          ),
        ),
      ),
    );

  Widget btn2 =
    Positioned(
      top: 100,
      left: 0,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            left: 26.0,
            right: 26.0,
            top: 14.0,
            bottom: 14.0,
          ),
          child: Container(
            width: 202,
            height: 48,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.28, -0.5), // Entspricht 14.89 Grad
                end: Alignment(0.0, 1.0), // Entspricht der Neigung des Gradienten
                colors: [
                  Color.fromRGBO(0, 0, 0, 0.5), // rgba(0, 0, 0, 0.5)
                  Color.fromRGBO(255, 255, 255, 0.5), // rgba(255, 255, 255, 0.5)
                ],
                stops: [0.3215, 1.0824], // Entsprechende Stops
              ),
              borderRadius: BorderRadius.circular(10)
            ), 
          ),
        ),
      ),
    );

//#endregion ===== Widgets =====
    
    return SizedBox.expand(
      child: Container(
        color: Colors.red,
        child: Stack(
          children: [
            btn2,
            btn1
          ],
        ),
      ),
    );
  }
}

//erstelle eine card in dem ist ein container mit einem padding in dem zwei 

// figma öffnen und radial gradient ansehen
// button mit stack in sizebox und dahinter noch ein schein

// versuche mit ai die glassbox


// rating bar strg+space ? in container

/* add to order button products

Layout:
  width: 279;
  height: 120;
  angle: 0 deg;
  opacity: 1;
  top: 504px;
  left: 60px;
  gap: 9px;
  border-radius: 30px;
  border-width: 3px;
  padding-top: 12px;
  padding-right: 30px;
  padding-bottom: 12px;
  padding-left: 30px;

Colors:
  background: radial-gradient(82.83% 280.98% at 96.89% 70.83%, #908CF5 0%, #BB8DE1 100%) /* warning: gradient uses a rotation that is not supported by CSS and may not behave as expected */;
  background-blend-mode: overlay;
  background: linear-gradient(180deg, rgba(254, 200, 241, 0.9) -22.92%, rgba(237, 146, 215, 0) 26.73%);

Borders:
  border: 3px solid;

  border-image-source: linear-gradient(14.89deg, rgba(0, 0, 0, 0.5) 32.15%, rgba(255, 255, 255, 0.5) 108.24%);

Shadows:
  box-shadow: 0px 30px 90px 0px #EA71C580;

  box-shadow: 0px 0px 15px 0px #FFACE4 inset;

  box-shadow: 0px -3px 24px 0px #9375B6 inset;

*/


/* recommend productbox products

Food pic="cat cupcakes_3D";
Food title="Mogli’s Cup";
Food description="Strawberry ice cream";
Food price ="8.99";
Food likes="􀊴 200";

Layout:
  width: 570;
  height: 786;
  angle: 0 deg;
  opacity: 1;
  gap: 30px;
  border-radius: 90px;
  border-width: 3px;
  padding-top: 30px;
  padding-right: 30px;
  padding-bottom: 60px;
  padding-left: 30px;

Colors:
  background: linear-gradient(175.51deg, rgba(255, 255, 255, 0) -18.98%, rgba(144, 140, 245, 0.74) 47.09%, rgba(140, 91, 234, 0.74) 95.87%);

Border:
  border: 3px solid #FFFFFF80  


*/

/* vertical menu
Layout:
  width: 423;
  height: 120;
  angle: 0 deg;
  opacity: 1;
  gap: 30px;
  border-radius: 90px;
  border-width: 3px;
  padding-top: 36px;
  padding-right: 51px;
  padding-bottom: 33px;
  padding-left: 48px;

Colors:
  background: #FFFFFF33;
  background-blend-mode: overlay;

Borders:
  border: 3px solid #FFFFFF80
Shadows:
  backdrop-filter: blur(180px)

*/


/*
// Transform.scale(scale, child:image.as)
padding: const EdgeInsets.fromLTRB(14,0,0,2)

container( 
  width...
  height...
  decoration:BoxDecoration(
        color: LinearGradient(
          begin: AlignmentDirectional.bottomCenter,
          end: AlignmentDirectional.topCenter
          colors: [
            const Color....
            const Color....
            const Color....
          ]
        )
    borderRaidus.circular(36)



    row -> mainAxisAlign...: MainAxis...spaceBeetwwn
))
*/
/*
Layout:
  width: 202;
  height: 48;
  border-width: 1px;
  angle: 0 deg;
  opacity: 1;
  border-radius: 10px;
  gap: 10px;
  padding-top: 14px;
  padding-right: 26px;
  padding-bottom: 14px;
  padding-left: 26px;

Colors: 
  background: radial-gradient(82.83% 280.98% at 96.89% 70.83%, #F69EA3 0%, #E970C4 100%) /* warning: gradient uses a rotation that is not supported by CSS and may not behave as expected */;
  background-blend-mode: overlay;
  background: linear-gradient(180deg, rgba(254, 200, 241, 0.9) -22.92%, rgba(237, 146, 215, 0) 26.73%);

Borders:
  border: 1px solid;
  border-image-source: linear-gradient(14.89deg, rgba(0, 0, 0, 0.5) 32.15%, rgba(255, 255, 255, 0.5) 108.24%);

Shadows:
  box-shadow: 0px 10px 30px 0px #EA71C580;
  box-shadow: 0px 0px 5px 0px #FFACE4 inset;
  box-shadow: 0px -1px 8px 0px #9375B6 inset;


*/