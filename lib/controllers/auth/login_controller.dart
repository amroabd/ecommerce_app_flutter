import 'package:ecommerce_app/controllers/base_controller.dart';
import 'package:ecommerce_app/core/config/crud_data.dart';
import 'package:ecommerce_app/data/source/remote/auth/login_data.dart';
import 'package:ecommerce_app/core/util/log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/extra_key.dart';
import '../../core/constant/name_routes.dart';
import '../../core/config/services.dart';

abstract class LoginController extends BaseController {
  void login();

  void goToSingUp();

  void goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  static const String tag = 'LoginControllerImp';
  late TextEditingController username, password;
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  //do instance from data access
  LoginData loginData = LoginData(Get.find());

  //control in  show hid password
  bool isShowPassword = true;

  //sharePref
  MyService myService = Get.find();

  void showPassword() {
    isShowPassword = !isShowPassword;
    Log.printInfo("$isShowPassword");
    update();
  }

  @override
  void login() async {
    FormState? currentState = formState.currentState;
    if (currentState!.validate()) {
      //requestState = RequestState.loading;
      myRequestState = MyRequestState('loading', RequestState.loading);
      update();
      await _sendLoginData();
      update();
    } else {
      Log.printInfo('$tag : invalidates FormFields sign in');
    }
  }

  _sendLoginData() async {
    var response = await loginData.loginData(username.text, password.text);
    myRequestState = handleMyStatusData(response);
    if (myRequestState.state == RequestState.success) {
      myService.shpr.setBool(ExtraKey.keyLoggedIn, true);
      Log.printInfo('$tag :success in login Go to =>home page ${username.text}');
      Get.offNamed(AppRoute.home);
    } else {
      if (myRequestState.state == RequestState.notConnect) {
        myShowDialog('Not Connect', ' ${myRequestState.data}');
      } else {
        myShowDialog('login', ' ${myRequestState.data}');
      }
      Log.printInfo('$tag : failure in login app ');
    }
  }

  @override
  void goToSingUp() {
    Get.offAllNamed(AppRoute.signUp);
  }

  @override
  void goToForgetPassword() {
    Get.offNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    username = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }
}
