import 'package:prm_project_kittoo/models/cart.dart';

class Order {
  final int id;
  final DateTime dateTime;
  final String status;
  final List<CartItem> cartItems;

  Order({
    required this.id,
    required this.dateTime,
    required this.status,
    required this.cartItems,
  });
}
