import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/name_routes.dart';

abstract class SuccessController extends GetxController {
  void goFromSuccessSignUpToLogin();
  void goFromSuccessRestToSLogin();
}

class SuccessControllerImp extends SuccessController {

  @override
  void goFromSuccessRestToSLogin() {
    Get.offNamed(AppRoute.login);
    Get.delete();
  }
  @override
  void goFromSuccessSignUpToLogin() {
    Get.offAllNamed(AppRoute.login);
    Get.delete();
  }


}
