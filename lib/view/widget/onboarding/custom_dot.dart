import 'package:ecommerce_app/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/source/statics/static1.dart';
import '../../../core/constant/values/colors.dart';

class CustomDotOnBoarding extends StatelessWidget {
  const CustomDotOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(onBoardingList.length, (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 800),
                          width: controller.currentPage == index ? 20 : 8,
                          height: 8,
                          margin: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(12.0)),
                        ))
              ],
            ));
  }
}
