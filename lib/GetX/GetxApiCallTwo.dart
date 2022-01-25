import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/controller/FakeUserController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class GetxApiCallTwo extends GetView<FakeUserController> {
  const GetxApiCallTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FakeUserController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.fUser.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                subtitle: Text(controller.fUser[index].body.toString()),
                title: Text(controller.fUser[index].title.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
