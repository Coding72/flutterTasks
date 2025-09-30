/*
class productingredients
list ingredients in productitem
class procuctsize, map<size, price>

default ist medium
*/

class ProductItem {
  final String? productName, imageDate, imageDescription;
  final String imagePath;
  final double price;
  final String ingredients;
  final int rating;
  final int likes;

  ProductItem({required this.productName, this.productInfoShort, this.productInfoLong, this.productDescription="", required this.imagePath});
}

List<ProductItem> galleryData = [
  ProductItem(
    productName: 'Mogli\'s Cup',// Strawberry ice cream
    imagePath: 'assets/images/cat cupcakes_3D.jpg',
  ),
  ProductItem(
    productName: 'Balu\'s Cup', // Pistachio ice cream
    imagePath: 'assets/images/Ice.cream.jpg',
  ),
  ProductItem(
    productName: 'Ice Cream',  // Icecream Stick
    imagePath: 'assets/images/ice cream stick_3D',
  ),
  ProductItem(
    productName: 'Ice Cream',
    imagePath: 'assets/images/Icecream_3D.jpg',
  ),
  ProductItem(
    productName: 'Ice Cream',
    imagePath: 'assets/images/chick cupcakes_3D.jpg',
  ),
  ProductItem(
    productName: 'Burger',
    imagePath: 'assets/images/Burger_3D.jpg',
  )
];

// -------------------------------

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

