import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/values/colors.dart';

class CustomSingUpOrSignIn extends StatelessWidget {
  const CustomSingUpOrSignIn(
      {super.key, required this.labelOne, required this.titleOne, this.onTap});

  final String labelOne;
  final String titleOne;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(labelOne, style: const TextStyle(fontSize: 14)),
        InkWell(
          onTap: onTap,
          child: Text(titleOne,
              style: const TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w500,
              )),
        )
      ],
    );
  }
}
