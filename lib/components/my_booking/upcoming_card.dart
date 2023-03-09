import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prm_project_kittoo/models/cart.dart';
import 'package:prm_project_kittoo/models/orders.dart';
import 'package:prm_project_kittoo/models/products.dart';
import 'package:prm_project_kittoo/pages/order_details.dart';

class UpcomingCard extends StatefulWidget {
  const UpcomingCard({super.key});

  @override
  State<UpcomingCard> createState() => _UpcomingCardState();
}

class _UpcomingCardState extends State<UpcomingCard> {
  List<Order> orders = [
    Order(
      id: 123,
      dateTime: DateTime.now(),
      status: 'Completed',
      cartItems: [
        CartItem(
            product: Product(
              id: 1,
              name: "Office Code",
              price: 234,
              description:
                  "cap di hoc cap di hoc cap di hoc cap di hoc cap di hoc cap di hoc cap di hoc cap di hoc cap di hoc",
              image: "lib/images/bag_1.png",
            ),
            quantity: 2),
        CartItem(
            product: Product(
              id: 2,
              name: "Belt Bag",
              price: 235,
              description:
                  "cap day cap day cap day cap day cap day cap day cap day cap day cap day cap day ",
              image: "lib/images/bag_2.png",
            ),
            quantity: 4),
        CartItem(
            product: Product(
              id: 3,
              name: "Hang Top",
              price: 236,
              description: "cap ",
              image: "lib/images/bag_3.png",
            ),
            quantity: 2),
        CartItem(
            product: Product(
              id: 4,
              name: "Old Fashion",
              price: 234,
              description: "do cu",
              image: "lib/images/bag_4.png",
            ),
            quantity: 3),
      ],
    ),
    Order(
      id: 345,
      dateTime: DateTime.now(),
      status: 'Completed',
      cartItems: [
        CartItem(
            product: Product(
              id: 3,
              name: "Hang Top",
              price: 236,
              description: "cap ",
              image: "lib/images/bag_3.png",
            ),
            quantity: 2),
        CartItem(
            product: Product(
              id: 4,
              name: "Old Fashion",
              price: 234,
              description: "do cu",
              image: "lib/images/bag_4.png",
            ),
            quantity: 3),
      ],
    ),
    Order(
      id: 54654,
      dateTime: DateTime.now(),
      status: 'Completed',
      cartItems: [
        CartItem(
            product: Product(
              id: 3,
              name: "Hang Top",
              price: 236,
              description: "cap ",
              image: "lib/images/bag_3.png",
            ),
            quantity: 2),
        CartItem(
            product: Product(
              id: 4,
              name: "Old Fashion",
              price: 234,
              description: "do cu",
              image: "lib/images/bag_4.png",
            ),
            quantity: 3),
      ],
    ),
  ];
  late List<bool> _isExpanded = List.filled(orders.length, false);
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          for (int i = 0; i < orders.length; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded[i] = !_isExpanded[i];
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                height: _isExpanded[i] ? 315 : 165,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, top: 15),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 4,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image.asset(
                              orders[i].cartItems.first.product.image,
                              width: 70,
                              height: 70,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order#${orders[i].id}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Total: \$${orders[i].totalPrice.toString()}",
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade400,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    "Upcoming",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                    Visibility(
                      visible: _isExpanded[i],
                      child: Container(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 3),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Date & Time",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                Text(
                                  DateFormat('MMM d, yyyy | hh:mm aaa')
                                      .format(orders[i].dateTime),
                                  style: const TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ship Address",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                const Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 35),
                                    child: Text(
                                      "S102 Vinhomes Grand Park S102 Vinhomes Grand Park S102 Vinhomes Grand Park",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.right,
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                "Your order is being shipped!",
                                style: TextStyle(
                                  color: Colors.orange.shade400,
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.6,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.orange.shade400,
                                          width: 2),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Cancel booking",
                                        style: TextStyle(
                                            color: Colors.orange.shade400,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OrderDetailsSreen(
                                                  order: orders[i],
                                                  orderDetails:
                                                      orders[i].cartItems,
                                                )));
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 2.6,
                                    height:
                                        MediaQuery.of(context).size.height / 20,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade400,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Colors.orange.shade400,
                                          width: 2),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "View Details",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ),
                    Icon(_isExpanded[i]
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down)
                  ],
                ),
              ),
            ),
        ]);
  }
}
