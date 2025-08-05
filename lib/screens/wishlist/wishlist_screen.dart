import 'package:flutter/material.dart';
import '../../models/product_model.dart';

// Temporary static wishlist for demo
final List<ProductModel> wishlistItems = [
  ProductModel(
    id: '3',
    title: 'Zip Hoodie',
    description: '',
    price: 59.99,
    imageUrl: 'assets/images/hoodie2.png',
    category: 'Hoodies',
    sizes: ['L'],
  ),
];

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: wishlistItems.isEmpty
          ? const Center(child: Text('No items in wishlist.'))
          : ListView.builder(
        itemCount: wishlistItems.length,
        itemBuilder: (ctx, index) {
          final item = wishlistItems[index];
          return ListTile(
            leading: Image.asset(item.imageUrl, width: 50, height: 50),
            title: Text(item.title),
            subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
          );
        },
      ),
    );
  }
}
