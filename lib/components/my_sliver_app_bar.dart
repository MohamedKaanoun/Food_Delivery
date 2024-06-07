import 'package:flutter/material.dart';
import 'package:pizza_app/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key, required this.child, required this.title});

  final Widget child;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 120,
      expandedHeight: 340,
      floating: false,
      pinned: true,
      actions: [
        IconButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage(),)), icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text("Fast Food"),
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        centerTitle: true,
        title: title,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
