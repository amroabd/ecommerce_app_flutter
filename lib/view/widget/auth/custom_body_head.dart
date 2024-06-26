import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomBodyHead extends StatelessWidget {
  const CustomBodyHead({super.key, required this.text});
    final String text;

  @override
  Widget build(BuildContext context) {
    return   Text(text,
      style: Theme.of(context).textTheme.displayLarge,
      textAlign: TextAlign.center,
    );
  }
}
