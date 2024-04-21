import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/config/crud_data.dart';

abstract class BaseController extends GetxController {
  late MyRequestState myRequestState;

/*  handleStatusData(status) {
    if (status is RequestState) {
      return status;
    } else {
      return RequestState.success;
    }
  }*/

  handleMyStatusData(status) {
    if (status is MyRequestState) {
      return status;
    } else {
      return MyRequestState('success', RequestState.success);
    }
  }

  myShowDialog(title, message) {
    Get.defaultDialog(
        title: title ?? "note",
        middleText: message ?? "this is content message.!",
        cancel: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('cancel'),
        ));
  }

  @override
  void onInit() {
    myRequestState = MyRequestState('loading', RequestState.empty);
    super.onInit();
  }
}
