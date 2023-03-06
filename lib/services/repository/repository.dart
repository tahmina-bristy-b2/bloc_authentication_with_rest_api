import 'dart:convert';

import 'package:fetchdatafromapi/services/data_provider/dataprovider.dart';
import 'package:http/http.dart';

class RepositoryClass {
  Future<Map<String, dynamic>?> getLoginRepo() async {
    Map<String, dynamic>? loginInfoList;
    try {
      final Response response =
          await DataProviderClass().getLogin() ?? Response('null', 404);
      if (response.statusCode == 200) {
        loginInfoList = jsonDecode(response.body);
        loginInfoList!['data'];
        return loginInfoList;
      }
    } catch (e) {
      print("there is a error on $e");
    }
    return loginInfoList;
  }

  Future getLoginSuccessRepo(String userName, String password) async {
    //Map<String, dynamic>? loginCheckMessage;

    final Response response =
        await DataProviderClass().getLoginSuccess(userName, password) ??
            Response("null", 404);
    print("object=${response.statusCode}");

    //loginCheckMessage = jsonDecode(response.body);

    //var data = await loginCheckMessage!['token'];
    // print("object=$data");

    return response;
  }
}
