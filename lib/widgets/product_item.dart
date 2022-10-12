import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;

  const ProductItem(this.id, this.name, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        leading: const Icon(Icons.favorite),
        title: Text(
          name,
          textAlign: TextAlign.center,
        ),
        trailing: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.black54,
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
