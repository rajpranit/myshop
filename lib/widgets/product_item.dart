// ignore_for_file: sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;

  const ProductItem(this.id, this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/product-detail', arguments: id),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          // ignore: sort_child_properties_last

          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            leading: IconButton(
              color: Colors.amber.shade300,
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            title: Text(
              name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: IconButton(
              color: Colors.amber.shade300,
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            backgroundColor: Colors.black54,
          ),
        ),
      ),
    );
  }
}
