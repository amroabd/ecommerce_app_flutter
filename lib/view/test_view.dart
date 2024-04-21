import 'package:ecommerce_app/controllers/test_controller.dart';
import 'package:ecommerce_app/core/widget/load_data_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    //inject
    Get.put(TestController());

    return Scaffold(
      appBar: AppBar(title: const SizedBox(width: double.infinity,child: Text("test Load data",textAlign: TextAlign.center)),),
      body: Container(
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 16,vertical: 8),
        child: Column(
     children: [
         Expanded(
           child: GetBuilder<TestController>(builder: (controller) {
             return LoadDataView(
               state: controller.state,
               widget: ListView.builder(
                   itemCount: controller.dataList.length,
                   itemBuilder: (_, index) {
                     return Card(
                       child: ListTile(
                         title: Text(controller.dataList[index]['firstName']),
                         leading: CircleAvatar(
                             child: Text('${controller.dataList[index]['id']}')),
                         subtitle: Text(controller.dataList[index]['lastName']),
                         trailing: Text(controller.dataList[index]['phone']),
                       ),
                     );
                   }),
             );
             /*
             if (controller.state == RequestState.loading) {
               return Text('Status: loading...',
                   style: Theme.of(context).textTheme.headlineLarge,
                   selectionColor: AppColor.blue);
             } else if (controller.state == RequestState.success) {
               return ListView.builder(
                   itemCount: controller.dataList.length,
                   itemBuilder: (_, index) {
                     return Card(
                       child: ListTile(
                         title: Text(controller.dataList[index]['firstName']),
                         leading: CircleAvatar(
                             child: Text('${controller.dataList[index]['id']}')),
                         subtitle:
                             Text(controller.dataList[index]['lastName']),
                         trailing: Text(controller.dataList[index]['phone']),
                       ),
                     );
                   });
             } else if (controller.state == RequestState.errorServer) {
               return Text('Status: errorServer',
                   style: Theme.of(context).textTheme.headlineLarge,
                   selectionColor: AppColor.errorColor);
             }
             return Text(
               'Status: notConnect',
               style: Theme.of(context).textTheme.headlineLarge,
               selectionColor: AppColor.errorColor,
             );*/
           }),
         ),]
        ),
      ),
    );
  }
}
