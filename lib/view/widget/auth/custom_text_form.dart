import 'package:flutter/material.dart';

import '../../../core/util/log.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.suffixIcon,
      required this.myTextController,
      this.validator,
      this.textInputAction,
      this.inputType,
      this.obscureText,
      this.onTapCIcon});

  final String hintText;
  final String labelText;
  final IconData suffixIcon;
  final TextEditingController? myTextController;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final bool? obscureText;
  final void Function()? onTapCIcon;

  @override
  Widget build(BuildContext context) {
    Log.printInfo("CustomTextForm:obscureText =>$obscureText");
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: TextFormField(
        obscureText: (obscureText == null) || !obscureText!  ? false : true,
        keyboardType: inputType,
        textInputAction: textInputAction,
        validator: validator,
        controller: myTextController,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: const EdgeInsets.symmetric(horizontal: 24),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  labelText,
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
            suffixIcon: InkWell(
              onTap: onTapCIcon,
              child: Icon(suffixIcon),
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
  }
}
