import 'package:ecommerce_app/core/constant/name_routes.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:ecommerce_app/view/widget/language/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/extra_key.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'.tr,style: Theme.of(context).textTheme.displayMedium,),
            const SizedBox(height: 20,),
             CustomButtonLang(
              textBtn: '2'.tr,onPressed: (){
                controller.changeLang(ExtraKey.codeLangAr);
                Get.toNamed(AppRoute.onBoarding);
             },
            ),
             CustomButtonLang(
              textBtn: '3'.tr,onPressed: (){
                controller.changeLang(ExtraKey.codeLangEn);
                Get.offNamed(AppRoute.onBoarding);
             },
            )
          ],
        ),
      ),
    );
  }
}
