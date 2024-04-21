import 'package:flutter/material.dart';


class CustomBodyMessage extends StatelessWidget {
  const CustomBodyMessage({super.key, required this.text});
    final String text;

  @override
  Widget build(BuildContext context) {
    return   Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displaySmall,
        ));
  }
}
