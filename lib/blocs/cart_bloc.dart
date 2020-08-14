import 'dart:async';

import 'package:bloc_patter/data/cart_service.dart';
import 'package:bloc_patter/model/cart.dart';

class CartBloc {
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart itemCart) {
    CartService.addToCart(itemCart);
    cartStreamController.sink.add(CartService.getCartList());
  }

  void removeFromCart(Cart itemCart) {
    CartService.removeFromCart(itemCart);
    cartStreamController.sink.add(CartService.getCartList());
  }

  List<Cart> getAllCart() {
    return CartService.getCartList();
  }

  void dispose() {
    cartStreamController.close();
  }
}

final cartBloc = CartBloc();
