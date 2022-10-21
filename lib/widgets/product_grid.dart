import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import './product_item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);
    final items = product.items;

    return GridView.builder(
      padding: const EdgeInsets.all(5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: items.length,
      itemBuilder: ((context, index) => Container(
            margin: const EdgeInsets.all(1),
            child: ProductItem(
              items[index].id,
              items[index].name,
              items[index].imageUrl,
            ),
          )),
    );
  }
}
