
import '../../../../core/config/crud_data.dart';
import '../api.dart';

class VerifyCodeSignUpData{
  CRUDProcessData crudProcessData;

  VerifyCodeSignUpData(this.crudProcessData);

  sendVerifyCodeData(String email, String verifyCode) async {
    var response = await crudProcessData.postData0(ApiService.signUp, {
      "email": email,
      "verifyCode": verifyCode,
    });
    return response.fold((l) => l, (r) => r);
  }

}