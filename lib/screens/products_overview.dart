import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';
import '../widgets/badge.dart';
import '../providers/cart.dart';

enum FilterOptions {
  favorites,
  all,
}

class ProductOveriewScreen extends StatefulWidget {
  @override
  State<ProductOveriewScreen> createState() => _ProductOveriewScreenState();
}

class _ProductOveriewScreenState extends State<ProductOveriewScreen> {
  var _showOnlyfavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.favorites) {
                  _showOnlyfavorites = true;
                } else {
                  _showOnlyfavorites = false;
                }
              });
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorites,
                child: Text('Only Favorites'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Show All'),
              ),
            ],
          ),
          Flexible(
            child: Consumer<Cart>(
              builder: (_, cartData, ch) => Badge(
                value: cartData.totalQuantity.toString(),
                child: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: (() {}),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ProductGrid(_showOnlyfavorites),
    );
  }
}
