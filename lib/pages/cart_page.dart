import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/models/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  child: Text(
                    "My Cart",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    cartProvider.clearCart();
                  },
                  child: Text('Clear Cart'),
                ),
              ],
            ),
            cartProvider.itemCount == 0
                ? Center(child: Text('Cart is empty.'))
                : Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 390,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: cartProvider.itemCount,
                                itemBuilder: (context, index) {
                                  final item = cartProvider.items[index];
                                  return Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    height: 120,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              4,
                                          margin:
                                              const EdgeInsets.only(left: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade400,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.asset(
                                            item.product.image,
                                            width: 70,
                                            height: 70,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.6,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15, top: 15, bottom: 15),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      item.product.name,
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(height: 4),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Quantity:",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        SizedBox(width: 4),
                                                        Text(
                                                          "${item.quantity}",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 4),
                                                    Text(
                                                      "\$${item.product.price} x ${item.quantity}",
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.redAccent,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    cartProvider
                                                        .removeFromCart(item);
                                                  },
                                                  icon: Icon(Icons
                                                      .remove_shopping_cart),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                          const SizedBox(height: 10),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Total",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "\$${cartProvider.totalPrice.toStringAsFixed(2)}",
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: MediaQuery.of(context).size.height / 15,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}

