
import 'package:flutter/material.dart';

class MyIconWidget extends StatefulWidget{
  const MyIconWidget({Key?key}):super(key:key);

  @override
  State<StatefulWidget> createState() => _MyIconWidgetState();
}


class _MyIconWidgetState extends State<MyIconWidget>{

  bool isSelected=false;
  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: (){
        setState(() {
          isSelected=!isSelected;
        });
      },
      child:Icon(isSelected?Icons.access_alarms:Icons.access_alarms, size:isSelected? 80:120) ,
    );
  }


}