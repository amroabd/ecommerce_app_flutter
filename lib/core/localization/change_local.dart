import 'package:ecommerce_app/core/constant/values/themes.dart';
import 'package:ecommerce_app/core/config/services.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/extra_key.dart';

class LocalController extends GetxController {
  Locale? language;

  MyService myService = Get.find();

  ThemeData appTheme=themeEnglish;

  void changeLang(String languageCode) {
    Locale locale = Locale(languageCode);
    myService.shpr.setString(ExtraKey.keyLanguage, languageCode);
    appTheme=languageCode==ExtraKey.codeLangAr?themeArabic:themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    final String? typeLang = myService.shpr.getString(ExtraKey.keyLanguage);
    if (typeLang == ExtraKey.codeLangAr) {
      language = const Locale(ExtraKey.codeLangAr);
      appTheme=themeArabic;
    } else if (typeLang == ExtraKey.codeLangEn) {
      language = const Locale( ExtraKey.codeLangEn);
      appTheme=themeEnglish;
    }else{
      language=Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }

}
