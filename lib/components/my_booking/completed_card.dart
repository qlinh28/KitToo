import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/models/cart.dart';
import 'package:prm_project_kittoo/models/orders.dart';
import 'package:prm_project_kittoo/models/products.dart';

class CompletedCard extends StatefulWidget {
  const CompletedCard({super.key});

  @override
  State<CompletedCard> createState() => _CompletedCardState();
}

class _CompletedCardState extends State<CompletedCard> {
  bool _isExpanded = false;
  List<Order> orders = [
    Order(
      id: 1,
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
            quantity: 3),
      ],
    ),
    Order(
      id: 1,
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: _isExpanded ? 300 : 165,
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
                      "assets/images/lisa_avatar.jpg",
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
                        const Text(
                          "Order#1232",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "total",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.shade200,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "Completed",
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
              visible: _isExpanded,
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
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
                        const Text(
                          "Dec 23, 2024 | 10:00 AM",
                          style: TextStyle(
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
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.orange.shade400, width: 2),
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
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: MediaQuery.of(context).size.height / 20,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade400,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Colors.orange.shade400, width: 2),
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
            Icon(_isExpanded
                ? Icons.keyboard_arrow_up
                : Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }
}
