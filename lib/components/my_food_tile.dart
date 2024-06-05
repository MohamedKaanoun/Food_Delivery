import 'package:flutter/material.dart';
import 'package:pizza_app/models/Food.dart';

class MyFoodTile extends StatelessWidget {
  const MyFoodTile({super.key, required this.food, required this.onTap});

  final Food food;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(food.name),
                    Text(food.price.toString().replaceAll(RegExp(r'.0'), '') +
                        " MAD"),
                    Text(food.description)
                  ],
                ),
              ),
              Image.asset(
                food.imagePath,
                height: 120,
                width: 120,
              ),
            ],
          ),
        )
      ],
    );
  }
}
