import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOptTextField extends StatelessWidget {
   const CustomOptTextField({super.key, this.onSubmit});

  final void Function(String)? onSubmit;

  @override
  Widget build(BuildContext context) {

    Color accentPurpleColor = Color(0xFF6A53A1);
    Color accentPinkColor = Color(0xFFF99BBD);
    Color accentDarkGreenColor = Color(0xFF115C49);
    Color accentYellowColor = Color(0xFFFFB612);
    Color accentOrangeColor = Color(0xFFEA7A3B);

    TextStyle? createStyle(Color color) {
      ThemeData theme = Theme.of(context);
      return theme.textTheme.displaySmall?.copyWith(color: color);
    }
    var otpTextStyles = [
      createStyle(accentPurpleColor),
      createStyle(accentYellowColor),
      createStyle(accentDarkGreenColor),
      createStyle(accentOrangeColor),
      createStyle(accentPinkColor),

    ];

    return Center(
        child: OtpTextField(
          numberOfFields: 5,
          borderColor: accentPurpleColor,
          focusedBorderColor: accentPurpleColor,
          styles: otpTextStyles,
          //showFieldAsBox: false,
          borderWidth: 4.0,
          //set to true to show as box or false to show as dash
          showFieldAsBox: false,
          //runs when a code is typed in
          onCodeChanged: (String code) {
            //handle validation or checks here
          },
          //runs when every textfield is filled
          onSubmit:onSubmit, // end onSubmit
        ),
    );
  }
}
