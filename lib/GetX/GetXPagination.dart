import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/PaginationController.dart';

class GetXPaginationPage extends StatelessWidget {
  GetXPaginationPage({Key? key}) : super(key: key);

  PaginationController paginationController = Get.put(PaginationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${paginationController.list.length}'),
      ),
      body: GetBuilder(
          init: paginationController,
          builder: (controller) => paginationController.isLoad
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  controller: paginationController.scrollController,
                  itemCount: paginationController.dateList!.length + 1,
                  itemBuilder: (context, index) =>
                      paginationController.dateList!.length == index
                          ? Center(
                              child: paginationController.isLastPage
                                  ? Container()
                                  : const CircularProgressIndicator())
                          : SizedBox(
                              height: 100,
                              child: ListTile(
                                leading: ClipOval(
                                  child: Image.network(
                                    paginationController.dateList![index]
                                            .airline![0].logo ??
                                        '',
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(Icons.add);
                                    },
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                subtitle: Text(paginationController
                                        .dateList![index].name ??
                                    ""),
                                title: Text(paginationController
                                        .dateList![index]
                                        .airline![0]
                                        .headQuaters ??
                                    "".toString()),
                              ),
                            ),
                )),
    );
  }
}
