import 'package:prm_project_kittoo/models/cart.dart';

class Order {
  final int id;
  final DateTime dateTime;
  final String status;
  final List<CartItem> cartItems;
  double totalPrice;

  Order({
    required this.id,
    required this.dateTime,
    required this.status,
    required this.cartItems,
    this.totalPrice = 0,
  }) {
    for (var item in cartItems) {
      totalPrice += item.product.price * item.quantity;
    }
  }
}
