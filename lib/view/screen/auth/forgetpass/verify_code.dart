import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_head.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_message.dart';
import 'package:ecommerce_app/view/widget/auth/custom_opt_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/auth/verify_code_controller.dart';
import '../../../../core/constant/values/strings.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
   final VerifyCodeResetControllerImp controllerImp=Get.put(VerifyCodeResetControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          Strings.verificationCodeTitleKey.tr,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomBodyHead(text: Strings.verifyCodeBodyTitleKey.tr),
            const SizedBox(
              height: 20,
            ),
            CustomBodyMessage(text: Strings.verifyCodeBodyMessageKey.tr),
            const SizedBox(
              height: 45,
            ),
            const SizedBox(
              height: 10,
            ),
             CustomOptTextField(onSubmit:  (String verificationCode){
               controllerImp.checkCode(verificationCode);
                 /*   showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  }
              );*/
            },),

          ],
        ),
      ),
    );
  }
}
