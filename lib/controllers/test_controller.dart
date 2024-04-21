import 'package:ecommerce_app/core/config/crud_data.dart';
import 'package:ecommerce_app/data/source/remote/test_data.dart';
import 'package:ecommerce_app/core/util/log.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  final TestData testData = TestData(Get.find());
   List dataList = [];
  late RequestState state ;

  getDataResult() async {
    state = RequestState.loading;
    final resp = await testData.getData();
    state = handleStatusData(resp);
    if (state == RequestState.success) {
      //Log.printLog("result:$resp");
      try {
        dataList = resp['users'];
        //dataList.addAll(resp['users']);
        Log.printLog('TestController:getDataResult => dataSize:${dataList.length}');
      } catch (e) {
        state = RequestState.empty;
        Log.printError("TestController:getDataResult => Result:left,MSG:$e");
      }
    }
    update();
  }

  handleStatusData(status) {
    if (status is RequestState) {
      return status;
    } else {
      return RequestState.success;
    }
  }

  @override
  void onInit() {
    getDataResult();
    super.onInit();
  }
}
