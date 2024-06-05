import 'dart:ffi';

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategories foodCategories;
  List<Addon> availableAddons;

  Food(
      {required this.description,
      required this.name,
      required this.imagePath,
      required this.price,
      required this.foodCategories,
      required this.availableAddons});
}

enum FoodCategories {
  burgers,
  salads,
  tacos,
  desserts,
  drinks,
}

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
