import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOveriewScreen extends StatelessWidget {
  const ProductOveriewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> loadedProducts = const [
      Product(
        id: 'p1',
        name: 'Red Shirt',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      ),
      Product(
        id: 'p2',
        name: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
      ),
      Product(
        id: 'p3',
        name: 'Yellow Scarf',
        description: 'Warm and cozy - exactly what you need for the winter.',
        price: 19.99,
        imageUrl:
            'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
      ),
      Product(
        id: 'p4',
        name: 'A Pan',
        description: 'Prepare any meal you want.',
        price: 49.99,
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Product Overview')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: loadedProducts.length,
        itemBuilder: ((context, index) => Container(
              margin: const EdgeInsets.all(5),
              child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: ProductItem(
                    loadedProducts[index].id,
                    loadedProducts[index].name,
                    loadedProducts[index].imageUrl,
                  )),
            )),
      ),
    );
  }
}
