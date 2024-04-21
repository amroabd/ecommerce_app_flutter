import 'package:ecommerce_app/controllers/auth/forget_pass_controller.dart';
import 'package:ecommerce_app/controllers/auth/reset_pass_controller.dart';
import 'package:get/get.dart';

import 'controllers/auth/signup_controller.dart';
import 'core/config/crud_data.dart';

class GBinding extends Bindings{
  @override
  void dependencies() {

    //Get.lazyPut(() => LoginControllerImp(),fenix: true);
    Get.lazyPut(()=> SignUpControllerImp(),fenix: true);
    Get.lazyPut(()=> ForgetPassControllerImp(),fenix: true);
    Get.lazyPut(()=> ResetPassControllerImp(),fenix: true);
    //inject
    Get.put(CRUDProcessData());

  }

}