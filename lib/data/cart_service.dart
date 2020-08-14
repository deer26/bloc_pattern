import 'package:bloc_patter/model/cart.dart';

class CartService {
  static List<Cart> cartItems = new List<Cart>();

  static CartService _singleton = CartService._internal();

  factory CartService() {
    return _singleton;
  }

  CartService._internal();

  static void addToCart(Cart itemCart) {
    cartItems.add(itemCart);
  }

  static void removeFromCart(Cart itemCart) {
    cartItems.remove(itemCart);
  }

  static List<Cart> getCartList() {
    return cartItems;
  }
}
