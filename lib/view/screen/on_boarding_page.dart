import 'package:ecommerce_app/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_brand_logo.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_button.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_dot.dart';
import 'package:ecommerce_app/view/widget/onboarding/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return  Scaffold(
        body: Container(padding: const EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 15),
          child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Expanded(flex: 1, child: CustomBrandLogo()),
          Expanded(flex: 3, child: CustomSliderOnBoarding()),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomDotOnBoarding(),
                  Spacer(),
                  CustomButtonOnBoarding(),
                ],
              ))
      ],
    ),
        ));
  }
}
