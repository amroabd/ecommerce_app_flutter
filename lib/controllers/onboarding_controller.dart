import 'package:ecommerce_app/core/constant/name_routes.dart';
import 'package:ecommerce_app/core/config/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../core/constant/extra_key.dart';
import '../data/source/statics/static1.dart';
import 'package:ecommerce_app/core/util/log.dart';

abstract class OnBoardingController extends GetxController {
  OnBoardingController();
  next();
  onPageChange(int index);
  skip();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int countPages = onBoardingList.length;
  int currentPage = 0;
  var titleBtn = "Next";
  changeText()=>  (countPages - 1 > currentPage) ? 'Next' : 'Get Start'.obs;

  MyService myService=Get.find();
  
  @override
  skip() {
    Get.offNamed(AppRoute.login);
    myService.shpr.setBool(ExtraKey.keyNotFirstInApp, true);
  }

  @override
  next() {
    if (countPages - 1 > currentPage) {
      currentPage++;
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
      titleBtn =changeText().toString();
      Log.printLog("$titleBtn cu:$currentPage");
    } else {
      Get.offNamed(AppRoute.login);
      myService.shpr.setBool(ExtraKey.keyNotFirstInApp, true);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
