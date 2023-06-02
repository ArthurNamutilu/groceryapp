import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _availableItems = [
    // name price image color
    ["Avocado", "50", "/lib/images/avocado.png", Colors.green],
    ["Banana", "20", "/lib/images/banana.png", Colors.yellow],
    ["Chicken", "650", "/lib/images/chicken.png", Colors.brown],
    ["Water", "150", "/lib/images/water.png", Colors.blue],
  ];

  // get  shop item to return list
  get shopItems => _availableItems;
}

/*  BORDER BORDER BORDER BORDER BORDER BORDER BORDER */

// import 'package:flutter/material.dart';

// class CartModel extends ChangeNotifier {
//   // list of items on sale
//   final List _shopItems = const [
//     // [ itemName, itemPrice, imagePath, color ]
//     ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
//     ["Banana", "2.50", "lib/images/banana.png", Colors.yellow],
//     ["Chicken", "12.80", "lib/images/chicken.png", Colors.brown],
//     ["Water", "1.00", "lib/images/water.png", Colors.blue],
//   ];

//   // list of cart items
//   List _cartItems = [];

//   get cartItems => _cartItems;

//   get shopItems => _shopItems;

//   // add item to cart
//   void addItemToCart(int index) {
//     _cartItems.add(_shopItems[index]);
//     notifyListeners();
//   }

//   // remove item from cart
//   void removeItemFromCart(int index) {
//     _cartItems.removeAt(index);
//     notifyListeners();
//   }

//   // calculate total price
//   String calculateTotal() {
//     double totalPrice = 0;
//     for (int i = 0; i < cartItems.length; i++) {
//       totalPrice += double.parse(cartItems[i][1]);
//     }
//     return totalPrice.toStringAsFixed(2);
//   }
// }
