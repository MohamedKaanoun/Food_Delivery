import 'package:flutter/material.dart';
import 'package:pizza_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class Myreceipt extends StatelessWidget {
  const Myreceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Thank You For Your Order"),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.inversePrimary),
                  borderRadius: BorderRadius.circular(8)),
              child: Consumer<Restaurant>(
                builder: (context, restaurant, child) =>
                    Text(restaurant.displayCartReceipt()),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text("Estimated Delivery Time is : 4:10 PM"),
          ],
        ),
      ),
    );
  }
}
