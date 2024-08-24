import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 97 Red',
      price: '359',
      description: 'The forward-thinking design of his latest signature shoe',
      imagePath: 'lib/images/air-max-97-red.png',
    ),
    Shoe(
      name: 'Air Force 1 Low Evo',
      price: '299',
      description:
          "Experience heritage with innovation. The Nike Air Force 1 Evo combines classic style with responsive React cushioning.",
      imagePath: 'lib/images/air-force-1-low-evo.png',
    ),
    Shoe(
      name: "Air Force 1 '07 Sky",
      price: '259',
      description: "You've got the hops and the speed-lace up in shoes that enhance",
      imagePath: 'lib/images/air-force-1.png',
    ),
    Shoe(
      name: "Air Force 1 '07 Panda",
      price: '129',
      description: "Playful and bold, the Nike Air Force 1 Shadow doubles up on design with layered details and an exaggerated midsole.",
      imagePath: 'lib/images/air-force-1-panda.png',
    ),
    Shoe(
      name: "Air Force 1 '07",
      price: '199',
      description: "Classic style meets modern comfort. The Nike Air Force 1 '07 features premium leather, Nike Air cushioning, and timeless design.",
      imagePath: 'lib/images/air-force-1-white.png',
    ),
    Shoe(
      name: 'Air Max 97 Blue',
      price: '299',
      description: 'The forward-thinking design of his latest signature shoe.',
      imagePath: 'lib/images/air-max-97-blue.png',
    ),
    Shoe(
      name: 'Air Max Blue',
      price: '169',
      description: 'Bouncy cushoning is paired with soft yet supporting form for respponsiveness and smooth heal-to-toe transition',
      imagePath: 'lib/images/air-max-blue.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item form cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
