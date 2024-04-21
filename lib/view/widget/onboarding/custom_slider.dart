
import 'package:ecommerce_app/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../data/source/statics/static1.dart';


class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp>{
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index){
        controller.onPageChange(index);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) => Column(
          children: [
            const Spacer(),
            Image.asset(
              onBoardingList[index].image!,
            ),
            const Spacer(),
            Text('${onBoardingList[index].titleBody}',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 9.9),
            Text(
                textAlign: TextAlign.center,
                '${onBoardingList[index].contentBody}',
                style:  Theme.of(context).textTheme.bodySmall),
            const Spacer(),
          ],
        ));
  }
}