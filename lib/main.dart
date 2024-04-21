import 'package:ecommerce_app/binding.dart';
import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/core/config/services.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/change_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //entry point: This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //injection
    LocalController controller = Get.put(LocalController());

    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      locale: controller.language,
      //routes: routes1,
      getPages: getPages,
      theme: controller.appTheme,
      //home: const Language(),
      initialBinding: GBinding(),
      //const TestApp()
    );
  }
}
