import 'package:flutter/material.dart';
import 'package:pizza_app/components/my_button.dart';
import 'package:pizza_app/components/my_card_tile.dart';
import 'package:pizza_app/models/restaurant.dart';
import 'package:pizza_app/pages/payement_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title:
                            const Text("Are Sure You Want to clear the cart"),
                        actions: [
                          //cancel button
                          TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Cancel")),
                          //confirm
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                restaurant.claerCart();
                              },
                              child: const Text("Confirm"))
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              //list of cards
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(child: Text("Your Card Is Empty")))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];

                                  return MycardTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),
              userCart.isEmpty
                  ? const Text("")
                  : MyButton(
                      text: "Checkout",
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PayementPage(),
                          ))),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        );
      },
    );
  }
}
