import 'package:agri_plant/data/products.dart';
import 'package:agri_plant/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartItems = products.take(4).toList();
    final totalPrice = cartItems
        .map((e) => e.price)
        .reduce((value, element) => value + element);

    return Scaffold(
        body: ListView(padding: const EdgeInsets.all(10), children: [
      // list of cart items spread out in the view
      ...List.generate(cartItems.length, (index) {
        return CartItem(cartItem: cartItems[index]);
      }),

      // total items in cart as well as total price
      const SizedBox(height: 15),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total (${cartItems.length})"),
          Text("\$$totalPrice",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary))
        ],
      ),

      const SizedBox(height: 20),

      // checkout button

      FilledButton.icon(
        onPressed: () {},
        icon: const Icon(IconlyBold.arrowRight),
        label: const Text("Proceed To Checkout"),
      )
    ]));
  }
}
