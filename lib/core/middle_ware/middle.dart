import 'package:ecommerce_app/core/constant/extra_key.dart';
import 'package:ecommerce_app/core/constant/name_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../config/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyService myService = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myService.shpr.getBool(ExtraKey.keyLoggedIn) == true) {
      return RouteSettings(name: AppRoute.home);
    }

    if (myService.shpr.getBool(ExtraKey.keyNotFirstInApp) == true) {
      return RouteSettings(name: AppRoute.login);
    }

    return null;
  }
}
