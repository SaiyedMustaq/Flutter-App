import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/CartController.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/OrderController.dart';
import 'package:flutter_rnd/GetX/onlineShop/widget/CartItem.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cartController = Get.put(CartController());
    var orderController = Get.put(OrderController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your cart"),
      ),
      body: GetBuilder<CartController>(
        init: CartController(),
        builder: (cont) => Column(
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Chip(
                      label: Text(
                        '₦${cartController.totalAmount.toStringAsFixed(2)}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    GetBuilder<OrderController>(
                        init: OrderController(),
                        builder: (context) {
                          return TextButton(
                              onPressed: () {
                                orderController.addOrder(
                                    cartController.items.values.toList(),
                                    cartController.totalAmount);
                                cartController.clear();
                                Get.snackbar(
                                    "Orders", "Orders placed successfully",
                                    backgroundColor: Colors.green,
                                    snackPosition: SnackPosition.BOTTOM);
                              },
                              child: const Text('ORDER NOW'));
                        })
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cartController.items.length,
                itemBuilder: (context, index) {
                  return CartItem(
                    id: cartController.items.values
                        .toList()[index]
                        .id
                        .split('.')
                        .last,
                    title: cartController.items.values
                        .toList()[index]
                        .productTitle,
                    price: cartController.items.values
                        .toList()[index]
                        .productPrice,
                    productId: int.parse(cartController.items.values
                        .toList()[index]
                        .id
                        .split('.')
                        .last),
                    quantity: cartController.items.values
                        .toList()[index]
                        .productQuantity,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
