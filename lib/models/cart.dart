import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Dame Certified 3',
      price: '85',
      description: 'A low-cut shoe built for stability and clutch performance when every possession matters.',
      imagePath: 'lib/images/Dame Cert 3.png',
    ),
    Shoe(
      name: 'D.O.N. Issue #6  ',
      price: '120',
      description: 
          'Lightweight sneaker built for explosive speed, lateral support, and dynamic court quickness.',
      imagePath: 'lib/images/D.O.N. Issue 6.png',
    ),
    Shoe(
      name: 'AE 1',
      price: '110',
      description:  
          'Debut model fusing holographic style with next-level responsiveness for versatile play.',
      imagePath: 'lib/images/AE 1.png',
    ),
    Shoe(
      name: 'Harden Volume 9',
      price: '128',
      description: 
          'A bold shoe delivering unmatched cushioning and style for dominant court performance.',
      imagePath: 'lib/images/Harden Vol.9.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();  
  }
}