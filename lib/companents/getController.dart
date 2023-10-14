import 'package:get/get.dart';

class GetController extends GetxController {
  var fullName = 'Dilshodjon Haydarov'.obs;
  var enters = 0.obs;
  var index = 0.obs;
  var isLogin = false.obs;

  void changeFullName(String name) {
    fullName.value = name;
  }

  void changeIsLogin() {
    isLogin.value = !isLogin.value;
  }
}