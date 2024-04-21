import '../../../../core/config/crud_data.dart';
import '../api.dart';

class SignUpData {
  CRUDProcessData crudProcessData;

  SignUpData(this.crudProcessData);

  sendSignUpData(String username, String password, String email, String phone) async {
    var response = await crudProcessData.postData0(ApiService.signUp, {
      "name": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
