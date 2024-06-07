import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_app/components/my_button.dart';
import 'package:pizza_app/models/Food.dart';
import 'package:pizza_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAdons[addon] = false;
    }
  }

  final Map<Addon, bool> selectedAdons = {};

  final Food food;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAdons) {
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAdons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addTocart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          widget.food.imagePath,
                          fit: BoxFit
                              .cover, // Ensures the image covers the 100x100 area
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(widget.food.name),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(widget.food.price.toString() + " MAD"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(widget.food.description),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                        color: Theme.of(context).colorScheme.inversePrimary),
                    Text(
                      "Add-ons",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.primary),
                          borderRadius: BorderRadius.circular(8)),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: ((context, index) {
                            Addon addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                                title: Text(addon.name),
                                subtitle: Text(addon.price.toString() + " MAD"),
                                value: widget.selectedAdons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAdons[addon] = value!;
                                  });
                                });
                          })),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                        text: "Add to Cart",
                        onTap: () =>
                            addToCart(widget.food, widget.selectedAdons))
                  ],
                ),
              ),
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 5),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
