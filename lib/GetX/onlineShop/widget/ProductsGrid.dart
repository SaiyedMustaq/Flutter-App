import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/CartController.dart';
import 'package:flutter_rnd/GetX/onlineShop/controller/ProductController.dart';
import 'package:flutter_rnd/GetX/onlineShop/ui/ProductDetailsScreen.dart';
import 'package:get/get.dart';

class ProductsGrid extends StatelessWidget {
  final controller = Get.put(ProductController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: controller.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return GetBuilder(
          init: ProductController(),
          builder: (value) => ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GridTile(
              child: GestureDetector(
                onTap: () {
                  Get.to(
                    ProductDetailsScreen(
                      controller.items[index].productTitle,
                      controller.items[index].price,
                      controller.items[index].imageUrl,
                      controller.items[index].description,
                    ),
                  );
                },
                child: Image.network(
                  controller.items[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black87,
                leading: IconButton(
                  icon: Icon(
                    controller.items[index].isFavourite == true
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    controller.toggleFavouriteStatus(index);
                  },
                ),
                title: Text(
                  controller.items[index].productTitle,
                  textAlign: TextAlign.center,
                ),
                trailing: GetBuilder<CartController>(
                    init: CartController(),
                    builder: (cont) {
                      return IconButton(
                        icon: controller.items[index].isCard
                            ? const Icon(Icons.shopping_cart)
                            : const Icon(Icons.shopping_cart_outlined),
                        onPressed: () {
                          if (controller.items[index].isCard) {
                            controller.removeitem(controller.items[index].id);
                          } else {
                            cartController.addItem(
                                controller.items[index].id,
                                controller.items[index].price,
                                controller.items[index].productTitle,
                                1);
                          }
                          controller.items[index].isCard =
                              !controller.items[index].isCard;
                        },
                        color: Theme.of(context).accentColor,
                      );
                    }),
              ),
            ),
          ),
        );
      },
    );
  }
}
