import 'package:flutter_rnd/GetX/httpServices/httpServices.dart';
import 'package:flutter_rnd/GetX/shopWitGetX/model/MackUpModel.dart';
import 'package:get/get.dart';

class MakeUpController extends GetxController {
  var makeUpList = <MackUpModel>[].obs;

  final service = UserService();

  @override
  void onInit() {
    callMakeUp();
    super.onInit();
  }

  callMakeUp() async {
    var result = await service.callMakupApi();
    makeUpList.addAll(result);
  }
}
