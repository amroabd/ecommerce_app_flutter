import 'package:ecommerce_app/core/config/crud_data.dart';
import 'package:ecommerce_app/data/source/remote/api.dart';

class TestData {
  CRUDProcessData crudProcessData;

  TestData(this.crudProcessData);

  getData() async {
    var resp = await crudProcessData.getData(ApiService.users);
    return resp.fold((l) => l, (r) => r);
  }
}
