import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce_app/core/constant/values/strings.dart';
import 'package:ecommerce_app/core/util/helper_functions.dart';
import 'package:ecommerce_app/core/util/log.dart';

class CRUDProcessData {
  static const tag = "CRUDProcessData";

  //1================upload data to server
  Future<Either<RequestState, Map>> postData(String baseUrl, Map data) async {
    const tag1 = "PostData";
    try {
      if (await isConnectInternet()) {
        http.Response response =
            await http.post(Uri.parse(baseUrl), body: data);
        if (response.statusCode == 200) {
          Map result = jsonDecode(response.body);
          Log.printLog("$tag:$tag1 => Result:$result");
          final String code = result.values.first['Code'];
          if (code.compareTo("Error") == 0) {
            return const Left(RequestState.errorServer);
          }
          return Right(result);
        } else {
          _printWarning(tag1, response);
          return const Left(RequestState.errorServer);
        }
      } else {
        _printError(tag1,
            "{type:no internet,reason:${Strings.notConnectNetMessageKey}}");
        return const Left(RequestState.notConnect);
      }
    } catch (e) {
      _printError(tag1, "{type:Exception,reason:$e}");
      return const Left(RequestState.failure);
    }
  }

  //2============ fetch data from server
  Future<Either<RequestState, Map>> getData(String url) async {
    const tag1 = "GetData";
    try {
      if (await isConnectInternet()) {
        http.Response response = await http.get(Uri.parse(url));
        if (response.statusCode == 200) {
          Map result = jsonDecode(response.body);
          Log.printLog(
              "$tag:$tag1 => Result:{code:success,data:${result.toString()}");
          return Right(result);
        } else {
          _printWarning(tag1, response);
          return const Left(RequestState.errorServer);
        }
      } else {
        _printError(tag1,
            "{type:no internet,reason:${Strings.notConnectNetMessageKey}}");
        return const Left(RequestState.notConnect);
      }
    } on Exception catch (e) {
      _printError(tag1, "{type:Exception,reason:$e}");
      return const Left(RequestState.errorServer);
    }
  }

  _printWarning(nameFun, http.Response response) {
    Log.printLog(
        "$tag :$nameFun => Result:{code:${response.statusCode} reason:${response.reasonPhrase}}");
  }

  _printError(nameFun, errMessage) {
    Log.printError("$tag:$nameFun => Result:$errMessage");
  }

  Future<Either<MyRequestState, Map>> postData0(
      String baseUrl, Map data) async {
    const tag1 = "PostData0";
    try {
      if (await isConnectInternet()) {
        http.Response response =
            await http.post(Uri.parse(baseUrl), body: data);
        if (response.statusCode == 200) {
          final Map result = jsonDecode(response.body);
          Log.printLog("$tag:$tag1 => Result:$result");
          final String code = result.values.first['Code'];
          if (code.compareTo("Error") == 0) {
            return Left(MyRequestState(
                result.values.first.toString(), RequestState.errorServer));
          }
          return Right(result);
        } else {
          _printWarning(tag1, response);
          return Left(
              MyRequestState(response.reasonPhrase, RequestState.errorServer));
        }
      } else {
        _printError(tag1,
            "{type:no internet,reason:${Strings.notConnectNetMessageKey}}");
        return Left(MyRequestState('reason:${Strings.notConnectNetMessageKey}',
            RequestState.notConnect));
      }
    } on Exception catch (e) {
      _printError(tag1, "{type:Exception,reason:$e}");
      return Left(MyRequestState(
          "{type:Exception,\n reason:$e}", RequestState.failure));
    }
  }
}

enum RequestState { loading, success, failure, errorServer, notConnect, empty }

class MyRequestState {
  final String? data;
  final RequestState state;

  MyRequestState(this.data, this.state);
}
