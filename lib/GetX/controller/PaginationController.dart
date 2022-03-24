import 'package:flutter/material.dart';
import 'package:flutter_rnd/GetX/controller/Model.dart';
import 'package:flutter_rnd/GetX/httpServices/httpServices.dart';
import 'package:flutter_rnd/GetX/model/FakeModelPagination.dart';
import 'package:get/get.dart';

//
class PaginationController extends GetxController {
  List<Model> modelList = [];
  List<FakeModelPagination> list = [];
  List<Data>? dateList = [];

  ScrollController scrollController = ScrollController();
  final service = UserService();
  int itemLength = 6;
  int pageSize = 1;
  bool isLoad = true;
  late bool isLastPage;
  @override
  void onInit() {
    getPagination();
    //generateList();
    addItem();
    super.onInit();
  }

  addItem() async {
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.position.pixels) {
        getPagination();
        // for (int i = 0; i < 2; i++) {
        //   itemLength++;
        //   modelList.add(Model(name: (itemLength).toString()));
        //   update();
        // }
      }
    });
  }

  getPagination() async {
    var result = await service.getFakeModelPagination(pageSize);
    dateList!.addAll(result!);
    if (result.length < 10) {
      isLastPage = true;
    } else {
      isLastPage = false;
    }
    pageSize + 1;
    isLoad = false;
    update();
  }

  // generateList() async {
  //   modelList = List.generate(
  //       itemLength, (index) => Model(name: (index + 1).toString()));
  // }
}
