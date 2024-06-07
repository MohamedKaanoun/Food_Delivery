import 'package:pizza_app/models/Food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAdons;
  int quantity;

  CartItem(
      {required this.food, this.quantity = 1, required this.selectedAdons});
  double get totalPrice {
    double addonsPrice =
        selectedAdons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrice) * quantity;
  }
}
