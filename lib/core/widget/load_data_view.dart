import 'package:ecommerce_app/core/config/crud_data.dart';
import 'package:ecommerce_app/core/constant/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class LoadDataView extends StatelessWidget {
  const LoadDataView({super.key, required this.state, required this.widget});

  final RequestState state;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return state == RequestState.notConnect
        ? Center(child: Lottie.asset(AppImageAsset.notData,))
        : state == RequestState.loading
            ? Center(child: Lottie.asset(AppImageAsset.loading, height: 200, width: 200))
            : state == RequestState.errorServer
                ? Center(child: Lottie.asset(AppImageAsset.notData,))
                : state == RequestState.none
                    ? Center(child: Lottie.asset(AppImageAsset.notData,))
                    : widget;
  }
}


class SendDataView extends StatelessWidget {
  const SendDataView({super.key, required this.state, required this.widget});

  final RequestState state;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return state == RequestState.loading
        ? Center(child: Lottie.asset(AppImageAsset.loading, height: 200, width: 200))
        : widget;
  }
}
