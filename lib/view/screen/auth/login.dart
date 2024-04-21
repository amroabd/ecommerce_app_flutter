import 'package:ecommerce_app/controllers/auth/login_controller.dart';
import 'package:ecommerce_app/core/config/crud_data.dart';

import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:ecommerce_app/core/constant/values/strings_en.dart';
import 'package:ecommerce_app/core/util/alert_exit.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_head.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_message.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button.dart';
import 'package:ecommerce_app/view/widget/auth/custom_sign_up_or_sign_in.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form.dart';
import 'package:ecommerce_app/view/widget/auth/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../core/util/helper_functions.dart';
import '../../../core/constant/image_assets.dart';
import '../../../core/constant/values/strings.dart';
import '../../../core/util/log.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(LoginControllerImp());
    //Get.lazyPut(() => LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        title: SizedBox(
          width: double.infinity,
          child: Text(
            Strings.loginHeadKey.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      body: GetBuilder<LoginControllerImp>(builder: (controller){
        return  controller.myRequestState.state==RequestState.loading?
        Center(child: Lottie.asset(AppImageAsset.loading, height: 200, width: 200)):
          WillPopScope(
          onWillPop: () => alertExitApp(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: controller.formState,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomLogo(),
                  CustomBodyHead(text: Strings.loginBodyHeadKey.tr),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomBodyMessage(text: Strings.loginBodyMessageKey.tr),
                  const SizedBox(
                    height: 65,
                  ),
                  CustomTextForm(
                    validator: (value) => validateInput(
                        value!, 3, 15, StringsEn.loginTitleUsername),
                    hintText: Strings.loginHintUsernameKey.tr,
                    labelText: Strings.loginTitleUsernameKey.tr,
                    suffixIcon: Icons.supervised_user_circle_sharp,
                    myTextController: controller.username,
                  ),
                  GetBuilder<LoginControllerImp>(
                      builder: (controller) => CustomTextForm(
                        obscureText: controller.isShowPassword,
                        validator: (value) => validateInput(value!, 4, 15, StringsEn.loginTitlePassword),
                        hintText: Strings.loginHintPasswordKey.tr,
                        labelText: Strings.loginTitlePasswordKey.tr,
                        suffixIcon: Icons.password,
                        myTextController: controller.password,
                        onTapCIcon: () {
                          controller.showPassword();
                          Log.printInfo("onTapCIcon =>${controller.isShowPassword}");
                        },
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Text(
                      Strings.loginTitleForgetPasswordKey.tr,
                      textAlign: TextAlign.end,
                      style: const TextStyle(color: AppColor.blue, fontSize: 14),
                    ),
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomButtonAuth(
                    title: Strings.loginTextBtnKey.tr,
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  CustomSingUpOrSignIn(
                    labelOne: Strings.loginTitleDoNotAccountKey.tr,
                    titleOne: Strings.loginTitleSignupKey.tr,
                    onTap: () {
                      controller.goToSingUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },),

    );
  }
}
