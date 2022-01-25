import 'package:flutter_rnd/GetX/httpServices/httpServices.dart';
import 'package:flutter_rnd/GetX/model/User.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var users = <User>[].obs;
  final service = UserService();
  @override
  void onInit() {
    getUsersCtrl();
    super.onInit();
  }

  getUsersCtrl() async {
    var result = await service.getUsers();
    users.addAll(result);
  }
}
