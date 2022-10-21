// ignore_for_file: sort_child_properties_last, duplicate_ignore
import 'package:provider/provider.dart';
import '../providers/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product-detail',
          arguments: product.id),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
          // ignore: sort_child_properties_last

          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            leading: IconButton(
              color: Colors.amber.shade300,
              icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_outline),
              onPressed: () {
                product.toggleFavorite();
              },
            ),
            title: Text(
              product.name,
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
