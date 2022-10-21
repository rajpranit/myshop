import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';

class ProductOveriewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Overview')),
      body: ProductGrid(),
    );
  }
}
