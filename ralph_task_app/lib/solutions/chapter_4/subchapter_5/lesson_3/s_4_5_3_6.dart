import 'package:flutter/material.dart';

class S4536 extends StatelessWidget {
  const S4536({super.key});
  @override
  Widget build(BuildContext context) {
    try {
      final List<Product> products = [
        Product(name: "Produkt 1", preis: 0.0),
        Product(name: "Produkt 2", preis: 0.1),
        Product(name: "Produkt 3", preis: 0.2),
        Product(name: "Produkt 4", preis: 0.3),
        Product(name: "Produkt 5", preis: 0.4),
        Product(name: "Produkt 6", preis: 0.5),        
      ];
      return Widgetx4x5x3x6(products: products, widgetx4x5x3x6xkey: Key('myListView'));
    } catch(e) {
      return ErrorWidget(e);
    }
  }
}

class Product {
  final String name;
  final double preis;

  Product({this.name="", this.preis=0.0});  
}

class Widgetx4x5x3x6 extends StatelessWidget{
  final Key widgetx4x5x3x6xkey;
  final List<Product> products;

  const Widgetx4x5x3x6({required this.products, super.key, required this.widgetx4x5x3x6xkey});

  @override
  Widget build(BuildContext context){
    
    return
    Container(
      //height:4000,
      key: widgetx4x5x3x6xkey,
      child: ListView(
        shrinkWrap: true,
        children: [
          for (Product product in products) 
            ListTile(title: Text(product.name), subtitle: Text("${product.preis}"))
        ]
      )
    );
  }

}

