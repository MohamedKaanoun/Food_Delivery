import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});
  final TextEditingController textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your Location"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Enter an address.."),
              ),
              actions: [
                //cancel button
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel"),
                ),
                //save

                MaterialButton(
                  onPressed: () {
                    String newAddress = textController.text;
                    context
                        .read<Restaurant>()
                        .updateDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: const Text("Save"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now!",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) =>
                      Text(restaurant.deliveryAddress),
                ),
                // drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
