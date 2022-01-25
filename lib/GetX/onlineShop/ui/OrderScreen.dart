import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/OrderController.dart';
import 'package:flutter_rnd/GetX/onlineShop/widget/AppDrawer.dart';
import 'package:flutter_rnd/GetX/onlineShop/widget/OrderItem.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  var orderController = Get.put(OrderController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yours Orders"),
      ),
      drawer: const AppDrawer(),
      body: Obx(
        () => ListView.builder(
            itemCount: orderController.orders.length,
            itemBuilder: (context, index) =>
                OrderItem(orderController.orders[index])),
      ),
    );
  }
}
