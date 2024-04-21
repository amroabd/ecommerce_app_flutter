import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/name_routes.dart';

abstract class ResetPassController extends GetxController {
  void newPassword();

  void goToSuccess();
}

class ResetPassControllerImp extends ResetPassController {
  late TextEditingController newPasswordController;
  late TextEditingController renewPasswordController;
  GlobalKey<FormState>formState=GlobalKey<FormState>();

  @override
  void newPassword() {
    // TODO: implement login
  }

  validPass(){
    String pass=newPasswordController.text;
    String repass=renewPasswordController.text;
    if(pass.isNotEmpty &&repass.isNotEmpty){
      if(pass.compareTo(repass)==0){
        return;
      }
    }
    return "invalid matching pass";
  }

  @override
  void goToSuccess() {
    var c=formState.currentState;
    if(c!.validate()){
      Get.offNamed(AppRoute.successReset);
    }else{

    }

  }

  @override
  void onInit() {
    newPasswordController = TextEditingController();
    renewPasswordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newPasswordController.dispose();
    renewPasswordController.dispose();
    super.dispose();
  }
}
