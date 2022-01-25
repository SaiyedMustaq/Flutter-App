import 'package:flutter_rnd/GetX/httpServices/httpServices.dart';
import 'package:flutter_rnd/GetX/model/FakeUserModel.dart';
import 'package:get/get.dart';

class FakeUserController extends GetxController {
  var fUser = <FakeUserModel>[].obs;
  final service = UserService();

  @override
  void onInit() {
    getFakeUserList();
    super.onInit();
  }

  getFakeUserList() async {
    var result = await service.getFakeUserModel();
    fUser.addAll(result);
  }
}
