import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/values/colors.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({super.key, required this.title, this.onPressed});
  final String title;
   final Function ()?onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: MaterialButton(onPressed: onPressed,padding: const EdgeInsets.symmetric(vertical: 14),
        color: AppColor.primaryColor,elevation: 0,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
            borderSide: const BorderSide(style: BorderStyle.none)),
        child: Text(title,style: const TextStyle(color:AppColor.white,fontWeight: FontWeight.w700),),
      ),
    );
  }
}
