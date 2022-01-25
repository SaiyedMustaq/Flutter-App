import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/shopWitGetX/controller/MakeUpController.dart';
import 'package:get/get.dart';

class ShopWithGetXPage extends StatelessWidget {
  ShopWithGetXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var makUpController = Get.put(MakeUpController());
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.all(5),
        itemCount: makUpController.makeUpList.length,
        itemBuilder: (context, index) {
          var singleObject = makUpController.makeUpList[index];
          return Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  singleObject.imageLink!,
                  width: 80,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.refresh,
                      size: 80,
                    );
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${singleObject.name}'),
                    Text(singleObject.brand.toString())
                  ],
                ),
                Text(
                  '${singleObject.priceSign.toString()} - ${singleObject.price.toString()}',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
