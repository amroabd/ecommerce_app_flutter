import 'dart:io';

import 'package:get/get_utils/src/get_utils/get_utils.dart';
import '../constant/values/strings_en.dart';
import 'log.dart';

//======================"01-Fun: validate Input to TextField in Form."========================
validateInput(String value, int min, int max, String type) {
  if (value.isEmpty) return StringsEn.message02Null;

  switch (type) {
    case StringsEn.loginTitleUsername:
      if (!GetUtils.isUsername(value)) {
        return StringsEn.message01NotValid + StringsEn.loginTitleUsername;
      }
      break;
    case StringsEn.loginTitlePassword:
      if (!GetUtils.isPassport(value)) {
        return StringsEn.message01NotValid + StringsEn.loginTitlePassword;
      }
      break;
    case StringsEn.emailTitleAccount:
      if (!GetUtils.isEmail(value)) {
        return StringsEn.message01NotValid + StringsEn.emailTitleAccount;
      }
      break;
    case StringsEn.phoneTitleAccount:
      if (!GetUtils.isPhoneNumber(value)) {
        return StringsEn.message01NotValid + StringsEn.phoneTitleAccount;
      }
      break;
  }

  if (value.length < min) {
    return " input value must is large from $min.!";
  }
  if (value.length > max) {
    return " input value must is less from $max.!";
  }
}

//======================"02-Fun: check connection internet CheckInternet."====================
isConnectInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) return true;
  } on SocketException catch (e) {
    Log.printLog(e.toString());
    return false;
  }
}

//======================"03-Fun: do some thing ."====================

//======================"04-Fun: do some thing ."====================
//======================"05-Fun: do some thing ."====================
//======================"06-Fun: do some thing ."====================
//======================"07-Fun: do some thing ."====================
//======================"08-Fun: do some thing ."====================
//======================"09-Fun: do some thing ."====================
//======================"10-Fun: do some thing ."====================
//======================"11-Fun: do some thing ."====================
//======================"12-Fun: do some thing ."====================
