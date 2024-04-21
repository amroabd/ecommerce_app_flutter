import 'package:ecommerce_app/controllers/auth/forget_pass_controller.dart';

import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_head.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_message.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../../core/constant/values/strings.dart';
import '../../../../core/constant/values/strings_en.dart';
import '../../../../core/util/helper_functions.dart';


class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
   //final ForgetPassControllerImp controllerImp=Get.put(ForgetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          Strings.loginTitleForgetPasswordKey.tr,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body:GetBuilder<ForgetPassControllerImp>(builder: (controllerImp)=>Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: controllerImp.formState,
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomBodyHead(text: Strings.checkEmailForgetPasswordKey.tr),
              const SizedBox(
                height: 20,
              ),
              CustomBodyMessage(text: Strings.checkEmailMessageFgtPassKey.tr),
              const SizedBox(
                height: 45,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextForm(
                inputType: TextInputType.emailAddress,
                validator: (value)=>validateInput(value!, 5, 15, StringsEn.emailTitleAccount),
                hintText: Strings.emailHintAccountKey.tr,
                labelText: Strings.emailTitleAccountKey.tr,
                suffixIcon: Icons.email_outlined,
                myTextController: controllerImp.emailController,
              ),
              CustomButtonAuth(
                title: Strings.checkTitleKey.tr,
                onPressed: () {
                  controllerImp.goToVerifyCode();
                },
              ),

            ],
          ),
        ),
      ),)
      ,
    );
  }
}
