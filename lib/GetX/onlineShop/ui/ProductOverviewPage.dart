import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/CartController.dart';
import 'package:flutter_rnd/GetX/onlineShop/widget/AppDrawer.dart';
import 'package:flutter_rnd/GetX/onlineShop/widget/Badge.dart';
import 'package:flutter_rnd/GetX/onlineShop/widget/ProductsGrid.dart';
import 'package:get/get.dart';

import 'CartScreen.dart';

class ProductOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
        actions: <Widget>[
          GetBuilder<CartController>(
              init: CartController(),
              builder: (contex) {
                return Badge(
                  child: IconButton(
                      icon: const Icon(
                        Icons.shopping_cart,
                      ),
                      onPressed: () {
                        Get.to(() => CartScreen());
                      }),
                  value: cartController.itemCount.toString(),
                  color: Theme.of(context).accentColor,
                );
              })
        ],
      ),
      drawer: const AppDrawer(),
      body: ProductsGrid(),
    );
  }
}
