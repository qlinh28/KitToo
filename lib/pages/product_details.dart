import 'package:flutter/material.dart';
import 'package:prm_project_kittoo/components/product_details/counter.dart';
import 'package:prm_project_kittoo/models/products.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  Center(
                    child: Image.asset(
                      product.image,
                      width: 250,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "\$${product.price}",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                            padding: const EdgeInsets.only(left: 25, right: 20),
                            child: Text(
                              product.description,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade600,
                              ),
                              textAlign: TextAlign.justify,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quantity",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        CartCounter(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 90,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade400,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Buy now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
