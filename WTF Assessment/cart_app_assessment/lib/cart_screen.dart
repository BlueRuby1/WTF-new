import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cart_app_assessment/cart_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total: ", style: TextStyle(fontSize: 20)),
                  Spacer(),
                  Chip(
                    label: Text(
                      '\$${cart.totalAmount.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.white),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  TextButton(onPressed: () {}, child: Text("ORDER NOW", style: TextStyle(color: Colors.purple),)),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, i) => CartItemWidget(
                id: cart.items.values.toList()[i].id,
                prodductId: cart.items.keys.toList()[i],
                title: cart.items.values.toList()[i].title,
                quantity: cart.items.values.toList()[i].quantity,
                price: cart.items.values.toList()[i].price,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  final String id;
  final String prodductId;
  final String title;
  final int quantity;
  final double price;

  const CartItemWidget({
    super.key,
    required this.id,
    required this.prodductId,
    required this.title,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Colors.redAccent,
        child: Icon(Icons.delete, color: Colors.white, size: 40),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(horizontal: 15),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(prodductId);
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple,
              child: Padding(
                padding: EdgeInsets.all(6),
                child: FittedBox(
                  child: Text(
                    "\$${price}",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            title: Text(title, style: TextStyle(fontSize: 18),),
            subtitle: Text('Total: \$${(price * quantity).toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Provider.of<Cart>(
                      context,
                      listen: false,
                    ).addItem(prodductId, price, title);
                  },
                  icon: Icon(Icons.add),
                ),
                Text('$quantity'),
                IconButton(
                  onPressed: () {
                    Provider.of<Cart>(
                      context,
                      listen: false,
                    ).removeSingleItem(prodductId);
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
