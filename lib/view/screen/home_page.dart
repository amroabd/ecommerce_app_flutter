
import 'package:ecommerce_app/core/constant/name_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controllers/home_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    final HomeController controller=Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(title: Obx(()=>Text('${controller.count}')),),
      body:  Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
            Get.toNamed(AppRoute.language);
          },child: const Text("language"),),
          MaterialButton(onPressed: (){
            Get.toNamed(AppRoute.login);
          },child: const Text("login"),),
        ],
      ),),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add),
        onPressed: ()=>controller.increment(),),
    );
  }

}
