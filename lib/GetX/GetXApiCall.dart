import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'controller/UserController.dart';

class GetXapiCallPage extends StatelessWidget {
  const GetXapiCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(UserController());
    return Scaffold(
        appBar: AppBar(),
        body: Obx(
          () => GridView.count(
            padding: const EdgeInsets.all(5),
            crossAxisCount: 2,
            children: controller.users.map(
              (item) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.teal.shade100,
                          child: Text(item.name),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ).toList(), // Don't forget to add this parser, as we are working with Iterable but a list of widgets is expected
          ),
        ));
  }
}
