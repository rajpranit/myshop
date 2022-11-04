import 'package:flutter/material.dart';
import 'package:myshop/providers/products.dart';

import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itemId = ModalRoute.of(context)!.settings.arguments as String;
    final item = Provider.of<Products>(context, listen: false).getById(itemId);

    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
    );
  }
}
