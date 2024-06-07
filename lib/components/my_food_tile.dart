import 'package:flutter/material.dart';
import 'package:pizza_app/models/Food.dart';

class MyFoodTile extends StatelessWidget {
  const MyFoodTile({super.key, required this.food, required this.onTap});

  final Food food;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    String formattedPrice = food.price.toStringAsFixed(2);
    if (formattedPrice.contains('.')) {
      formattedPrice = formattedPrice.replaceAll(RegExp(r'0*$'), '');
      formattedPrice = formattedPrice.replaceAll(RegExp(r'\.$'), '');
    }
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        formattedPrice + " MAD",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      food.imagePath,
                      fit: BoxFit
                          .cover, // Ensures the image covers the 100x100 area
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.primary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
