import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:pizza_app/models/Food.dart';
import 'package:pizza_app/models/cart_item.dart';

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
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
  //user cards
  final List<CartItem> _cart = [];
  //delivery address
  String _deliveryAddress = 'Nezalet Cheikh Settat';

  //Oeration

  void addTocart(Food food, List<Addon> selectedAdons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //see if there is a cart with the same food
      bool isSameFood = item.food == food;

      //check if the list of addons is the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAdons, selectedAdons);
      return isSameAddons && isSameFood;
    });
    //if the cart alreaady exists , increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //if it's not add new cart item
    else {
      _cart.add(CartItem(food: food, selectedAdons: selectedAdons));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.remove(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAdons) {
        itemTotal = itemTotal + addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void claerCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is you receipt.");
    receipt.writeln();
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------------");
    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAdons.isNotEmpty) {
        receipt
            .writeln("   Add-ons : ${_formatAddons(cartItem.selectedAdons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------------");
    receipt.writeln();
    receipt.writeln("total Items: ${getTotalItemCount()}");
    receipt.writeln("total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "$price MAD";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
