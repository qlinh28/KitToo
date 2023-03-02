import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter >= 1) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.orange.shade100,
            child: IconButton(
              icon: Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              ),
              onPressed: _decrementCounter,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '$_counter',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.orange.shade100,
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
              onPressed: _incrementCounter,
            ),
          ),
        ),
      ],
    );
  }
}
