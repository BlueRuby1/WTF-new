import 'package:cart_app_assessment/cart_provider.dart';
import 'package:cart_app_assessment/cart_screen.dart';
import 'package:cart_app_assessment/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Order App"),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.all(10),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartScreen()),
                );
              },
              icon: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: DUMMY_PRODUCTS.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(DUMMY_PRODUCTS[i]['title'] as String),
          subtitle: Text('\$${DUMMY_PRODUCTS[i]['price']}'),
          trailing: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Provider.of<Cart>(context, listen: false).addItem(
                DUMMY_PRODUCTS[i]['id'] as String,
                DUMMY_PRODUCTS[i]['price'] as double,
                DUMMY_PRODUCTS[i]['title'] as String,
              );
              ScaffoldMessenger.of(
                context
              ).showSnackBar(SnackBar(content: Text("Added to Cart")));
            },
          ),
        ),
      ),
    );
  }
}
