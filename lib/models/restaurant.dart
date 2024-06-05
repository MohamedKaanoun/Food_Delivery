import 'package:flutter/foundation.dart';
import 'package:pizza_app/models/Food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //Tacos
    Food(
        description: "Tacos Dans DEscription",
        name: "Tacos Mixte",
        imagePath: "assets/images/tacos/tacos1.jpeg",
        price: 30,
        foodCategories: FoodCategories.tacos,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Tacos Dans DEscription",
        name: "Tacos Dand",
        imagePath: "assets/images/tacos/tacos2.jpeg",
        price: 30,
        foodCategories: FoodCategories.tacos,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Tacos Dans DEscription",
        name: "Tacos Pastor",
        imagePath: "assets/images/tacos/tacos3.jpeg",
        price: 30,
        foodCategories: FoodCategories.tacos,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Tacos Dans DEscription",
        name: "Tacos Birria",
        imagePath: "assets/images/tacos/tacos4.jpeg",
        price: 30,
        foodCategories: FoodCategories.tacos,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Tacos Dans DEscription",
        name: "Tacos Barbacoa",
        imagePath: "assets/images/tacos/tacos5.jpeg",
        price: 30,
        foodCategories: FoodCategories.tacos,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),

    //Desserts

    Food(
        description: "Dessert Dans Description",
        name: "Dessert Mixte",
        imagePath: "assets/images/desserts/dessert1.jpeg",
        price: 30,
        foodCategories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Dessert Dans Description",
        name: "Dessert Dand",
        imagePath: "assets/images/desserts/dessert2.jpeg",
        price: 30,
        foodCategories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Dessert Dans Description",
        name: "Dessert Pastor",
        imagePath: "assets/images/desserts/dessert3.jpeg",
        price: 30,
        foodCategories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Dessert Dans Description",
        name: "Dessert Birria",
        imagePath: "assets/images/desserts/dessert4.jpeg",
        price: 30,
        foodCategories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Dessert Dans Description",
        name: "Dessert Barbacoa",
        imagePath: "assets/images/desserts/dessert5.jpeg",
        price: 30,
        foodCategories: FoodCategories.desserts,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),

    //Drinks

    Food(
        description: "Drink Dans Description",
        name: "Drink Mixte",
        imagePath: "assets/images/drinks/drink1.jpeg",
        price: 30,
        foodCategories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Drink Dans Description",
        name: "Drink Dand",
        imagePath: "assets/images/drinks/drink2.jpeg",
        price: 30,
        foodCategories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Drink Dans Description",
        name: "Drink Pastor",
        imagePath: "assets/images/drinks/drink3.jpg",
        price: 30,
        foodCategories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Drink Dans Description",
        name: "Drink Birria",
        imagePath: "assets/images/drinks/drink4.jpeg",
        price: 30,
        foodCategories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Drink Dans Description",
        name: "Drink Barbacoa",
        imagePath: "assets/images/drinks/drink5.jpeg",
        price: 30,
        foodCategories: FoodCategories.drinks,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),

    //salads

    Food(
        description: "Salad Dans Description",
        name: "Salad Mixte",
        imagePath: "assets/images/salads/salad1.jpeg",
        price: 30,
        foodCategories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Salad Dans Description",
        name: "Salad Dand",
        imagePath: "assets/images/salads/salad2.jpeg",
        price: 30,
        foodCategories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Salad Dans Description",
        name: "Salad Pastor",
        imagePath: "assets/images/salads/salad3.jpeg",
        price: 30,
        foodCategories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Salad Dans Description",
        name: "Salad Birria",
        imagePath: "assets/images/salads/salad4.jpeg",
        price: 30,
        foodCategories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Salad Dans Description",
        name: "Salad Barbacoa",
        imagePath: "assets/images/salads/salad5.jpeg",
        price: 30,
        foodCategories: FoodCategories.salads,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),

    //Burgers

    Food(
        description: "Burger Dans Description",
        name: "Burger Mixte",
        imagePath: "assets/images/burgers/burger1.jpeg",
        price: 30,
        foodCategories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Burger Dans Description",
        name: "Burger Dand",
        imagePath: "assets/images/burgers/burger2.jpeg",
        price: 30,
        foodCategories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Burger Dans Description",
        name: "Burger Pastor",
        imagePath: "assets/images/burgers/burger3.jpeg",
        price: 30,
        foodCategories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Burger Dans Description",
        name: "Burger Birria",
        imagePath: "assets/images/burgers/burger4.jpeg",
        price: 30,
        foodCategories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
    Food(
        description: "Burger Dans Description",
        name: "Burger Barbacoa",
        imagePath: "assets/images/burgers/burger5.jpg",
        price: 30,
        foodCategories: FoodCategories.burgers,
        availableAddons: [
          Addon(name: "Extra cheese 1", price: 20),
          Addon(name: "Extra cheese 2", price: 20),
          Addon(name: "Extra cheese 3", price: 20),
        ]),
  ];

  List<Food> get menu => _menu;
}
