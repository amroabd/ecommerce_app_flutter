
import 'package:ecommerce_app/data/source/remote/auth/verify_code_signup.dart';
import 'package:ecommerce_app/core/util/log.dart';
import 'package:get/get.dart';
import 'package:ecommerce_app/core/config/crud_data.dart';
import 'package:ecommerce_app/core/constant/name_routes.dart';
import '../base_controller.dart';

abstract class VerifyCodeController extends BaseController {
  void checkCode(verifyCode);
  void goToNextPage();
}

class VerifyCodeResetControllerImp extends VerifyCodeController {
  late String verifyCode;

  @override
  void checkCode(verifyCode) {
    goToResetPassword();
  }

  @override
  void goToNextPage() {
    goToResetPassword();
  }

  void goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

}

class VerifyCodeSignUpControllerImp extends VerifyCodeController {
  String ?email;
  VerifyCodeSignUpData verifyCodeSignUpData=VerifyCodeSignUpData(Get.find());

  @override
  void checkCode(verifyCode) async {
    //requestState=RequestState.loading;
    myRequestState=MyRequestState('loading', RequestState.loading);
    update();
    var resp=await verifyCodeSignUpData.sendVerifyCodeData(email!, verifyCode);
    //requestState=handleStatusData(resp);
    myRequestState=handleMyStatusData(resp);
    if(myRequestState.state==RequestState.success){
      goToNextPage();
    }else{
      Log.printError('error response');
      //requestState=RequestState.failure;
    }
    update();
  }

  @override
  void goToNextPage() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    Log.printLog(Get.parameters);
    try{
      email=Get.parameters["email"];
    }catch(e){
      Log.printError(e.toString());
    }

    super.onInit();
  }

}
