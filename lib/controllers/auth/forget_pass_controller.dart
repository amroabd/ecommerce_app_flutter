
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/name_routes.dart';
import '../../core/util/log.dart';

abstract class ForgetPassController extends GetxController {
  void checkEmail();

  void goToVerifyCode();
}

class ForgetPassControllerImp extends ForgetPassController {
  late TextEditingController phoneController, emailController;
  GlobalKey<FormState>formState=GlobalKey<FormState>();
  @override
  void checkEmail() {

    // TODO: implement login
  }

  @override
  void goToVerifyCode() {
    var c=formState.currentState;
    if(c!.validate()){
      Get.offNamed(AppRoute.verifyCode);
    }else{
      Log.printInfo('invalid email');
    }
  }

  @override
  void onInit() {
    phoneController = TextEditingController();
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phoneController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
