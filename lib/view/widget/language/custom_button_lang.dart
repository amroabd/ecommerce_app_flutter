import 'package:flutter/material.dart';
import '../../../core/constant/values/colors.dart';

class CustomButtonLang extends StatelessWidget {
  const CustomButtonLang({
    super.key,
    required this.textBtn,
    this.onPressed,
  });

  final String textBtn;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        child:  Text(
          textBtn, style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
