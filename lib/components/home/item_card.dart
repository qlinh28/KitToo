import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/models/products.dart';

class ItemCard extends StatelessWidget {
  ItemCard({super.key});

  List<Product> products = [
    Product(
      id: 1,
      name: "Office Code",
      price: 234,
      description: "cap di hoc",
      image: "lib/images/bag_1.png",
    ),
    Product(
      id: 2,
      name: "Belt Bag",
      price: 235,
      description: "cap day",
      image: "lib/images/bag_2.png",
    ),
    Product(
      id: 3,
      name: "Hang Top",
      price: 236,
      description: "cap ",
      image: "lib/images/bag_3.png",
    ),
    Product(
      id: 4,
      name: "Old Fashion",
      price: 234,
      description: "do cu",
      image: "lib/images/bag_4.png",
    ),
    Product(
      id: 5,
      name: "Office Code",
      price: 234,
      description: "cap cpng so",
      image: "lib/images/bag_5.png",
    ),
    Product(
      id: 6,
      name: "Office Code",
      price: 234,
      description: "cap cong so",
      image: "lib/images/bag_6.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 193),
      children: [
        for (int i = 0; i < products.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade400,
            ),
            child: Column(children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    products[i].image,
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[i].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "\$${products[i].price}",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          )
      ],
    );
  }
}
