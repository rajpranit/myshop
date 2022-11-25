import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/products-detail.dart';
import '../screens/products_overview.dart';

import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        theme: ThemeData(
          accentColor: Colors.amber,
          fontFamily: 'Lato',
          primaryColor: Colors.red,
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontFamily: 'Lato', color: Colors.white),
          ),
        ),
        home: ProductOveriewScreen(),
        routes: {
          '/product-detail': (context) => const ProductDetailScreen(),
        },
      ),
    );
  }
}
