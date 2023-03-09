import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/models/products.dart';

class CartItem {
  Product product;
  int quantity;

  CartItem({required this.product,required this.quantity});
}

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  int get itemCount => _items.length;

  double get totalPrice {
    double sum = 0.0;
    for (var item in _items) {
      sum += item.product.price * item.quantity;
    }
    return sum;
  }

  void addToCart(CartItem item) {
    final index = _items.indexWhere((i) => i.product.id == item.product.id);
    if (index >= 0) {
      // item is already in the cart, increase its quantity
      _items[index].quantity += item.quantity;
    } else {
      // add new item to the cart
      _items.add(item);
    }
    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    final index = _items.indexWhere((i) => i.product.id == item.product.id);
    if (index >= 0) {
      // item is in the cart, decrease its quantity
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
