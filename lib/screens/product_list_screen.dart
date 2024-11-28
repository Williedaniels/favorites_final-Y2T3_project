import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/favorites.dart';
import 'favorites_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<String> products = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              title: Text(product),
              trailing: Consumer<Favorites>(
                builder: (context, favorites, child) {
                  final isFavorite = favorites.items.contains(product);
                  return IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.grey, 
                    ),
                    onPressed: () {
                      if (isFavorite) {
                        favorites.removeItem(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('$product removed from favorites')),
                        );
                      } else {
                        favorites.addItem(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('$product added to favorites')),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoritesScreen()),
          );
        },
      ),
    );
  }
}