import '../../../../core/config/crud_data.dart';
import '../api.dart';

class LoginData {
  CRUDProcessData crudProcessData;

  LoginData(this.crudProcessData);

  loginData(String username, String password) async {
    var response = await crudProcessData.postData0(ApiService.login, {
      "name": username,
      "password": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}