import 'package:flutter/material.dart';
import 'package:pizza_app/auth/AuthService.dart';
import 'package:pizza_app/components/my_current_location.dart';
import 'package:pizza_app/components/my_description_box.dart';
import 'package:pizza_app/components/my_drawer.dart';
import 'package:pizza_app/components/my_food_tile.dart';
import 'package:pizza_app/components/my_sliver_app_bar.dart';
import 'package:pizza_app/components/my_tab_bar.dart';
import 'package:pizza_app/models/Food.dart';
import 'package:pizza_app/models/restaurant.dart';
import 'package:pizza_app/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  Future<void> signOut() async {
    await AuthService().signOut();
  }

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: FoodCategories.values.length, vsync: this);
    assert(() {
      if (tabController.length != FoodCategories.values.length) {
        throw FlutterError(
          "Controller's length property (${tabController.length}) does not match the "
          "number of children (${FoodCategories.values.length}) present in TabBarView's children property.",
        );
      }
      return true;
    }());
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<Food> _filterManuByCategory(
      FoodCategories categories, List<Food> fullMenu) {
    return fullMenu.where((food) => food.foodCategories == categories).toList();
  }

  List<Widget> getFoodCategory(List<Food> fullMenu) {
    return FoodCategories.values.map((cat) {
      List<Food> categoryMenu = _filterManuByCategory(cat, fullMenu);
      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return MyFoodTile(
              food: food,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FoodPage(food: food))));
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Divider(indent: 25, endIndent: 25, color: Colors.black),
                // Current location
                MyCurrentLocation(),
                // Description box
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
              controller: tabController,
              children: getFoodCategory(restaurant.menu)),
        ),
      ),
    );
  }
}
