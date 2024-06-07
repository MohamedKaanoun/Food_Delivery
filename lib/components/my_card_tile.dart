import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_app/components/my_quantity_selector.dart';
import 'package:pizza_app/models/cart_item.dart';
import 'package:pizza_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MycardTile extends StatelessWidget {
  final CartItem cartItem;
  const MycardTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.secondary),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //card image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          cartItem.food.imagePath,
                          fit: BoxFit
                              .cover, // Ensures the image covers the 100x100 area
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //food name
                      Text(cartItem.food.name),

                      const SizedBox(
                        height: 5,
                      ),
                      //food  price
                      Text(cartItem.food.price.toInt().toString() + " MAD")
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: MyQuantitySelector(
                        quantity: cartItem.quantity,
                        food: cartItem.food,
                        onIncrement: () {
                          restaurant.addTocart(
                              cartItem.food, cartItem.selectedAdons);
                        },
                        onDecrement: () {
                          restaurant.removeFromCart(cartItem);
                        }),
                  )
                ],
              ),
            ),
            SizedBox(
              height: cartItem.selectedAdons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                children: cartItem.selectedAdons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(addon.name),
                              Text(
                                " (" + addon.price.toInt().toString() + " MAD)",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary),
                              )
                            ],
                          ),
                          shape: StadiumBorder(
                              side: BorderSide(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          onSelected: (value) {},
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 10),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
