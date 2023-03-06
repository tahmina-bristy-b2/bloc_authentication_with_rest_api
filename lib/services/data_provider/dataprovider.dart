import 'dart:convert';

import 'package:fetchdatafromapi/services/contants/apis.dart';
import 'package:http/http.dart' as http;

class DataProviderClass {
  Future getLogin() async {
    final http.Response response;

    response = await http.get(Uri.parse(Apis().login));
    headers:
    <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };
    return response;
  }

  Future getLoginSuccess(String userName, String password) async {
    final http.Response response;
    response = await http.post(
        Uri.parse(
          Apis().loginChcek,
        ),
        body: jsonEncode(
            <String, dynamic>{"email": userName, "password": password}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    return response;
  }
}
