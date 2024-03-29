
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
   const MyTextField({key, required this.textController,this.hintText})
      : super(key: key);
  final TextEditingController textController;
 final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black87),
      controller: textController,
      keyboardType: TextInputType.name,
      cursorOpacityAnimates: true,
      textInputAction: TextInputAction.next,
      maxLength: 50,
      onEditingComplete: () {},
      decoration: InputDecoration(
          hintText: 'Enter ${hintText}',
          filled: true,
          fillColor: Colors.white70,
          prefixIcon: const Icon(Icons.person_2),
          contentPadding: const EdgeInsets.all(12.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide.none)),
    );
  }
}
