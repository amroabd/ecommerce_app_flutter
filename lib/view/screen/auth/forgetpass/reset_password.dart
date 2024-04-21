import 'package:ecommerce_app/controllers/auth/reset_pass_controller.dart';
import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_head.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_message.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ecommerce_app/core/util/helper_functions.dart';
import '../../../../core/constant/values/strings.dart';
import '../../../../core/constant/values/strings_en.dart';


class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
   //final ResetPassControllerImp controllerImp=Get.put(ResetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: Text(
          Strings.resetPasswordTitleKey.tr,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body:GetBuilder<ResetPassControllerImp>(builder:(controllerImp)=>Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: controllerImp.formState,
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomBodyHead(text: Strings.newPasswordTitleResetKey.tr),
              const SizedBox(
                height: 20,
              ),
              CustomBodyMessage(text: Strings.newPasswordBodyMessageResetKey.tr),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 10,
              ),
              CustomTextForm(
                validator:(value)=>validateInput(value!, 5, 15, StringsEn.loginTitlePassword) ,
                hintText: Strings.newPasswordHintResetKey.tr,
                labelText: Strings.newPasswordTitleResetKey.tr,
                suffixIcon: Icons.password_outlined,
                myTextController: controllerImp.newPasswordController,
                inputType: TextInputType.visiblePassword,
              ),
              CustomTextForm(
                validator: (value)=>controllerImp.validPass(),
                hintText: Strings.renewPasswordHintResetKey.tr,
                labelText: Strings.renewPasswordTitleResetKey.tr,
                suffixIcon: Icons.password_outlined,
                myTextController: controllerImp.renewPasswordController,
                inputType: TextInputType.visiblePassword,
              ),
              CustomButtonAuth(
                title: Strings.resetTitleKey.tr,
                onPressed: () {
                  controllerImp.goToSuccess();
                },
              ),

            ],
          ),
        ),
      ))
      ,
    );
  }
}
