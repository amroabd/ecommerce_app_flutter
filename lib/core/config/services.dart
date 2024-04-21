import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyService extends GetxService {
  late SharedPreferences shpr;

  Future<MyService> init() async {
    shpr = await SharedPreferences.getInstance();
    return this;
  }
}

//inject MyService
initService() async {
  await Get.putAsync(() => MyService().init());
}
