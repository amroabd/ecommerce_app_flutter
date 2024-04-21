import 'package:ecommerce_app/controllers/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12.0))),
      child:Row(
        children: [
          ElevatedButton(
            onPressed: () {
              controller.skip();
            },
            child:  const Text("Skip"),),
          const Spacer(),
          MaterialButton(
            onPressed: () {
              controller.next();
            },
            textColor: AppColor.blue,
            child: Text((controller.titleBtn))  ,
          ),
        ],
      )

    );
  }
}
