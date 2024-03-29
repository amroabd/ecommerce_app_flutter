
import 'dart:math';

import 'package:flutter/material.dart';

class MyCardWidget extends StatefulWidget{
  const MyCardWidget({Key?key}):super(key:key);

  @override
  State<StatefulWidget> createState() => _MyCardWidgetState();
}


class _MyCardWidgetState extends State<MyCardWidget>{
  MaterialColor myColor=Colors.blue;
  @override
  Widget build(BuildContext context) {
   return  GestureDetector(
     onTap: (){
       setState(() {
         myColor=Colors.primaries[Random().nextInt(Colors.primaries.length)];
       });
     },
     child:Card(
       color: myColor,
       child: const SizedBox(height: 200,
           width: 300,
           child: Text('myCard')) ,
     )

   );
  }

}