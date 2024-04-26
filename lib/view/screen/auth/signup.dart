import 'package:ecommerce_app/controllers/auth/signup_controller.dart';
import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:ecommerce_app/core/constant/values/strings_en.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_head.dart';
import 'package:ecommerce_app/view/widget/auth/custom_body_message.dart';
import 'package:ecommerce_app/view/widget/auth/custom_button.dart';
import 'package:ecommerce_app/view/widget/auth/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/util/helper_functions.dart';
import '../../../core/constant/values/strings.dart';
import '../../../core/util/alert_exit.dart';
import '../../../core/widget/load_data_view.dart';
import '../../widget/auth/custom_sign_up_or_sign_in.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final SignUpControllerImp controllerImp=Get.put(SignUpControllerImp());
    //Get.lazyPut(()=>SignUpControllerImp());
    //--------
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0,
          title: SizedBox(
            width: double.infinity,
            child: Text(
              Strings.loginTitleSignupKey.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        body: GetBuilder<SignUpControllerImp>(
            builder: (controller) =>
                WillPopScope(
                  onWillPop: () => alertExitApp(),
                  child:SendDataView(
                    state: controller.myRequestState.state,
                    widget: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: controller.formState,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          CustomBodyHead(text: Strings.loginBodyHeadKey.tr),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomBodyMessage(
                              text: Strings.loginBodyMessageKey.tr),
                          const SizedBox(
                            height: 25,
                          ),
                          CustomTextForm(
                            validator: (value) => validateInput(
                                value!, 3, 30, StringsEn.loginTitleUsername),
                            hintText: Strings.loginHintUsernameKey.tr,
                            labelText: Strings.loginTitleUsernameKey.tr,
                            suffixIcon: Icons.supervised_user_circle_sharp,
                            myTextController: controller.username,
                            textInputAction: TextInputAction.next,
                          ),
                          CustomTextForm(
                            validator: (value) => validateInput(
                                value!, 5, 30, StringsEn.loginTitlePassword),
                            hintText: Strings.loginHintPasswordKey.tr,
                            labelText: Strings.loginTitlePasswordKey.tr,
                            suffixIcon: Icons.password,
                            myTextController: controller.password,
                            textInputAction: TextInputAction.next,
                          ),
                          CustomTextForm(
                            validator: (value) => validateInput(
                                value!, 5, 30, StringsEn.emailTitleAccount),
                            hintText: Strings.emailHintAccountKey.tr,
                            labelText: Strings.emailTitleAccountKey.tr,
                            suffixIcon: Icons.email_outlined,
                            myTextController: controller.email,
                            inputType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                          CustomTextForm(
                            validator: (value) => validateInput(
                                value!, 6, 15, StringsEn.phoneTitleAccount),
                            hintText: Strings.phoneHintAccountKey.tr,
                            labelText: Strings.phoneTitleAccountKey.tr,
                            suffixIcon: Icons.phone_android_outlined,
                            myTextController: controller.phone,
                            textInputAction: TextInputAction.done,
                            inputType: TextInputType.phone,
                          ),
                          CustomButtonAuth(
                            title: Strings.loginTitleSignupKey.tr,
                            onPressed: () {
                              controller.signup();
                            },
                          ),
                          CustomSingUpOrSignIn(
                            labelOne: Strings.loginTitleIsAlreadyAccountKey.tr,
                            titleOne: Strings.loginHeadKey.tr,
                            onTap: () {
                              controller.goToSignIn();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}
