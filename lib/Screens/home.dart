import 'package:flutter/material.dart';
import 'package:possystem/Constratnt/colors.dart';
import 'package:possystem/Screens/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'cart',
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: textColor,
            ),
            onPressed: () {
              print('cart');
            },
          ),
        ],
        title: GestureDetector(
          onTap: () {
            print('profile');
          },
          child: const Text(
            'Welcome Hussein',
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
