import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/success_controller.dart';
import '../../../core/constant/values/strings.dart';

class SuccessSignUpPage extends StatelessWidget {
  const SuccessSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessControllerImp controller=Get.put(SuccessControllerImp());
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 1,),
            Text(Strings.successTitleKey,textAlign: TextAlign.center,style: Theme.of(context).textTheme.displayLarge,),
            const Spacer(flex: 1,),
            const Icon(Icons.check_circle_outline,color: AppColor.primaryColor,size: 80),
            const Spacer(flex: 1,),
            Text(Strings.successBodyTitleKey,textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,),
            Text(' ${Strings.successfullyKey} signUp.! ',textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,),
            const Spacer(flex: 1,),
            SizedBox(width: double.infinity,
                child: CustomButtonAuth(title: 'OK',onPressed: (){
                  controller.goFromSuccessSignUpToLogin();
                },)),
            const Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}
