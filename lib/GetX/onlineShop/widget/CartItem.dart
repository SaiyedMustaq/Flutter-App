import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/CartController.dart';
import 'package:get/get.dart';

class CartItem extends StatelessWidget {
  final String id;
  final int productId;
  final double price;
  final int quantity;
  final String title;

  CartItem({
    required this.id,
    required this.price,
    required this.quantity,
    required this.title,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    var cartController = Get.put(CartController());
    return Dismissible(
      key: ValueKey(id),
      background: Container(
        color: Theme.of(context).errorColor,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        cartController.removeitem(productId);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Chip(
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('₦$price'),
              ),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            title: Text(title),
            subtitle: Text('Total: ₦${(price * quantity)}'),
            trailing: Text('$quantity X'),
          ),
        ),
      ),
    );
  }
}
