import 'package:flutter/material.dart';
import 'package:pizza_app/models/Food.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategories.values.map((cat) {
      return Tab(
        text: cat.toString().split('.').last,
      );
    }).toList();
  }

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
