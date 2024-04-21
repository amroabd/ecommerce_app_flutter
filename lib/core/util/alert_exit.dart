import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/values/strings.dart';

alertExitApp(){
   return Get.defaultDialog(
     title: Strings.alertTitleKey.tr,middleText: Strings.alertExitMessageKey.tr,
    confirm: MaterialButton(onPressed: (){
      exit(0);
   },child:  Text(Strings.alertBtnConfirmKey.tr),),
     cancel:  MaterialButton(onPressed: (){
      Get.back();
     },child:  Text(Strings.alertBtnCancelKey.tr),)

   );
}