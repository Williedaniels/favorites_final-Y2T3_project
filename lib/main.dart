import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/favorites.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Favorites(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Favorites App',
      home: ProductListScreen(),
    );
  }
}