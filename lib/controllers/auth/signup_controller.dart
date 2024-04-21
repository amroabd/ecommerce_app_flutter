import 'package:ecommerce_app/controllers/base_controller.dart';
import 'package:ecommerce_app/core/config/crud_data.dart';
import 'package:ecommerce_app/data/source/remote/auth/sign_up_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/name_routes.dart';
import 'package:ecommerce_app/core/util/log.dart';

abstract class SignUpController extends BaseController {
  void signup();

  void goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username, password;
  late TextEditingController phone, email;

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  final SignUpData signUpData = SignUpData(Get.find());

  @override
  void signup() async {
    if (formState.currentState!.validate()) {
      myRequestState = MyRequestState('loading', RequestState.loading);
      update();
      await sendSignUpData();
      //Get.delete<SignUpControllerImp>();
      update();
    } else {
      Log.printInfo('not validate');
    }
  }

  sendSignUpData() async {
    var result = await signUpData.sendSignUpData(username.text, password.text, email.text, phone.text);
    myRequestState = handleMyStatusData(result);
    if (myRequestState.state == RequestState.success) {
      Log.printInfo('Success signUp :${result.toString()}');
      Get.offNamed(AppRoute.verifyCodeSignUp, parameters: {"email": email.text});
    } else {
      if (myRequestState.state == RequestState.notConnect) {
        myShowDialog('Not Connect', ' ${myRequestState.data}');
      } else {
        myShowDialog('signUp', ' ${myRequestState.data}');
      }
    }
  }

  @override
  void goToSignIn() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    phone.dispose();
    email.dispose();
    super.dispose();
  }
}
