import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CounterController.dart';

class CounterPage extends StatelessWidget {
  int counter = 0;
  CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Counter Build Call ${counter++}');
    final CounterController counterController = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text("Clicks: ${counterController.counter}")),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            Theme.of(context).floatingActionButtonTheme.backgroundColor,
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
