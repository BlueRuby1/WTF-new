import 'package:cart_app_assessment/cart_provider.dart';
import 'package:cart_app_assessment/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Order App",
        home: ProductListScreen(),
      ),
    );
  }
}
